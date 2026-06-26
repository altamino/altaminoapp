.class public Lcom/narvii/account/AgeGatingFragment;
.super Lcom/narvii/account/AccountBaseFragment;
.source "AgeGatingFragment.java"


# instance fields
.field countryInfo:Lcom/narvii/account/mobile/CountryInfoR;

.field countryText:Landroid/widget/TextView;

.field date:Ljava/util/Date;

.field dateText:Landroid/widget/TextView;

.field hintText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/narvii/account/AccountBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V
    .locals 6

    .line 213
    invoke-super {p0, p1}, Lcom/narvii/account/AccountBaseFragment;->completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V

    const-string v0, "method"

    .line 215
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "Google"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "AutoSignup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v1, "Facebook"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "Phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v1, "Email"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    const-string v0, "googleSignup"

    goto :goto_2

    :cond_2
    const-string v0, "facebookSignup"

    goto :goto_2

    :cond_3
    const-string v0, "emailSignup"

    goto :goto_2

    :cond_4
    const-string v0, "phoneSignup"

    :goto_2
    if-eqz v0, :cond_5

    const-string v1, "signupMethod"

    .line 231
    invoke-virtual {p1, v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    :cond_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3ff5b7c -> :sswitch_4
        0x4984d4e -> :sswitch_3
        0x217bfee6 -> :sswitch_2
        0x5f62d7c7 -> :sswitch_1
        0x7f784a59 -> :sswitch_0
    .end sparse-switch
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "SignUpBirthday"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 47
    invoke-super {p0, p1}, Lcom/narvii/account/AccountBaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 50
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/LoginActivity;

    .line 51
    iput v0, p1, Lcom/narvii/account/LoginActivity;->statMaxLoginStep:I

    .line 52
    iput v1, p1, Lcom/narvii/account/LoginActivity;->statMaxSignupSetp:I

    .line 55
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 56
    invoke-static {}, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->getCountryList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/account/mobile/CountryInfoR;

    .line 57
    iget-object v4, v3, Lcom/narvii/account/mobile/CountryInfoR;->isoCode:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 58
    iput-object v3, p0, Lcom/narvii/account/AgeGatingFragment;->countryInfo:Lcom/narvii/account/mobile/CountryInfoR;

    :cond_2
    const-string p1, "prefs"

    .line 63
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/SharedPreferences;

    .line 65
    iget-object v2, p0, Lcom/narvii/account/AgeGatingFragment;->countryInfo:Lcom/narvii/account/mobile/CountryInfoR;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/narvii/account/mobile/CountryInfoR;->isGDPR()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x10

    goto :goto_0

    :cond_3
    const/16 v2, 0xd

    :goto_0
    const-string v3, "suggest_age"

    .line 66
    invoke-interface {p1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 67
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 70
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 71
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p1, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x2

    .line 72
    invoke-virtual {p1, v2, v0}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x5

    .line 73
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 74
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/account/AgeGatingFragment;->date:Ljava/util/Date;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0278

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onMobileCheckSuccess(Ljava/lang/String;)V
    .locals 4

    .line 188
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 191
    :cond_0
    new-instance v0, Lcom/narvii/account/SignUpSetPasswordFragment;

    invoke-direct {v0}, Lcom/narvii/account/SignUpSetPasswordFragment;-><init>()V

    .line 192
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "validationContext"

    .line 193
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 195
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v1, 0x7f010010

    const v2, 0x7f010011

    const/4 v3, 0x0

    .line 196
    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    const v1, 0x7f0904ba

    .line 198
    invoke-virtual {p1, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 86
    invoke-super {p0, p1, p2}, Lcom/narvii/account/AccountBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0902f3

    .line 88
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/account/AgeGatingFragment;->countryText:Landroid/widget/TextView;

    .line 89
    iget-object p2, p0, Lcom/narvii/account/AgeGatingFragment;->countryText:Landroid/widget/TextView;

    new-instance v0, Lcom/narvii/account/AgeGatingFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/account/AgeGatingFragment$1;-><init>(Lcom/narvii/account/AgeGatingFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09032c

    .line 105
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/account/AgeGatingFragment;->dateText:Landroid/widget/TextView;

    .line 106
    iget-object p2, p0, Lcom/narvii/account/AgeGatingFragment;->dateText:Landroid/widget/TextView;

    new-instance v0, Lcom/narvii/account/AgeGatingFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/account/AgeGatingFragment$2;-><init>(Lcom/narvii/account/AgeGatingFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09050e

    .line 129
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/account/AgeGatingFragment;->hintText:Landroid/widget/TextView;

    const p2, 0x7f09075c

    .line 130
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/account/AgeGatingFragment$3;

    invoke-direct {p2, p0}, Lcom/narvii/account/AgeGatingFragment$3;-><init>(Lcom/narvii/account/AgeGatingFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    invoke-virtual {p0}, Lcom/narvii/account/AgeGatingFragment;->updateDate()V

    .line 183
    invoke-virtual {p0}, Lcom/narvii/account/AgeGatingFragment;->updateCountryInfo()V

    return-void
.end method

.method updateCountryInfo()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/narvii/account/AgeGatingFragment;->countryInfo:Lcom/narvii/account/mobile/CountryInfoR;

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/narvii/account/AgeGatingFragment;->countryText:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/narvii/account/AgeGatingFragment;->hintText:Landroid/widget/TextView;

    const v1, 0x7f0f00b5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/narvii/account/AgeGatingFragment;->countryText:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/narvii/account/mobile/CountryInfoR;->countryName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lcom/narvii/account/AgeGatingFragment;->hintText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/account/AgeGatingFragment;->countryInfo:Lcom/narvii/account/mobile/CountryInfoR;

    invoke-virtual {v1}, Lcom/narvii/account/mobile/CountryInfoR;->isGDPR()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0f00b3

    goto :goto_0

    :cond_1
    const v1, 0x7f0f00b4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-void
.end method

.method updateDate()V
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/narvii/account/AgeGatingFragment;->dateText:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/account/AgeGatingFragment;->date:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
