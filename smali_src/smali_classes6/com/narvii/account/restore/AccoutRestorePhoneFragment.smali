.class public Lcom/narvii/account/restore/AccoutRestorePhoneFragment;
.super Lcom/narvii/account/restore/AccountRestoreBaseFragment;
.source "SourceFile"


# instance fields
.field countryCodePicker:Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;

.field phoneInputLayout:Lcom/narvii/widget/TextInputLayout;


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

.method private getCurrentPhoneNumber()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/restore/AccoutRestorePhoneFragment;->phoneInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/widget/TextInputLayout;->getEditContent()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    const-string v2, "+"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/narvii/account/restore/AccoutRestorePhoneFragment;->countryCodePicker:Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->getCountryCode()I

    .line 26
    move-result v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v2, " "

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method


# virtual methods
.method protected isContentVerified()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/restore/AccoutRestorePhoneFragment;->phoneInputLayout:Lcom/narvii/widget/TextInputLayout;

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
    invoke-virtual {v2, v0, v3}, Lcom/narvii/account/AccountUtils;->isPhoneAndPassVerified(Landroid/widget/TextView;Landroid/widget/TextView;)Z

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

    const v0, 0x7f0d02a1

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
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
    const p2, 0x7f0a03c8

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/account/restore/AccoutRestorePhoneFragment;->countryCodePicker:Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;

    .line 15
    .line 16
    .line 17
    const p2, 0x7f0a0ae2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    check-cast p1, Lcom/narvii/widget/TextInputLayout;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/narvii/account/restore/AccoutRestorePhoneFragment;->phoneInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p0}, Lcom/narvii/widget/TextInputLayout;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 29
    .line 30
    const-string p1, "phoneNumber"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->accountUtils:Lcom/narvii/account/AccountUtils;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p2}, Lcom/narvii/account/AccountUtils;->getCountryCode(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->accountUtils:Lcom/narvii/account/AccountUtils;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p2}, Lcom/narvii/account/AccountUtils;->getNationalNumber(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    iget-object v1, p0, Lcom/narvii/account/restore/AccoutRestorePhoneFragment;->countryCodePicker:Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;

    .line 51
    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    const-string v3, "+"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v0}, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->setPhoneNumber(Ljava/lang/String;)V

    .line 71
    .line 72
    :cond_0
    if-eqz p2, :cond_1

    .line 73
    .line 74
    iget-object v0, p0, Lcom/narvii/account/restore/AccoutRestorePhoneFragment;->phoneInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 75
    .line 76
    .line 77
    const v1, 0x7f0a04b2

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    check-cast v0, Landroid/widget/EditText;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 90
    move-result-object p2

    .line 91
    .line 92
    .line 93
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 94
    move-result p2

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 98
    .line 99
    .line 100
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    move-result p1

    .line 106
    .line 107
    if-nez p1, :cond_2

    .line 108
    .line 109
    iget-object p1, p0, Lcom/narvii/account/restore/AccoutRestorePhoneFragment;->phoneInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/narvii/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 113
    move-result-object p1

    .line 114
    const/4 p2, 0x0

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 118
    .line 119
    iget-object p1, p0, Lcom/narvii/account/restore/AccoutRestorePhoneFragment;->phoneInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/narvii/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 127
    .line 128
    :cond_2
    new-instance p1, Lcom/narvii/account/restore/AccoutRestorePhoneFragment$1;

    .line 129
    .line 130
    .line 131
    invoke-direct {p1, p0}, Lcom/narvii/account/restore/AccoutRestorePhoneFragment$1;-><init>(Lcom/narvii/account/restore/AccoutRestorePhoneFragment;)V

    .line 132
    .line 133
    const-wide/16 v0, 0x0

    .line 134
    .line 135
    .line 136
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 137
    return-void
.end method

.method protected setupRequestBuilder(Lcom/narvii/util/http/ApiRequest$Builder;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/restore/AccoutRestorePhoneFragment;->getCurrentPhoneNumber()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "phoneNumber"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 13
    return-void
.end method

.method protected setupResultIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "phoneNumber"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/account/restore/AccoutRestorePhoneFragment;->getCurrentPhoneNumber()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    return-void
.end method
