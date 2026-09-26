.class public Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;
.super Landroid/widget/TextView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field bindPhoneNumberEdit:Landroid/widget/EditText;

.field countryInfo:Lcom/narvii/account/mobile/CountryInfoR;

.field phoneNumberFormattingTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->setPhoneNumber(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    return-void
.end method

.method private update()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->bindPhoneNumberEdit:Landroid/widget/EditText;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->phoneNumberFormattingTextWatcher:Landroid/text/TextWatcher;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->phoneNumberFormattingTextWatcher:Landroid/text/TextWatcher;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->bindPhoneNumberEdit:Landroid/widget/EditText;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->countryInfo:Lcom/narvii/account/mobile/CountryInfoR;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    new-instance v0, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->countryInfo:Lcom/narvii/account/mobile/CountryInfoR;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/narvii/account/mobile/CountryInfoR;->isoCode:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    iput-object v0, p0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->phoneNumberFormattingTextWatcher:Landroid/text/TextWatcher;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->bindPhoneNumberEdit:Landroid/widget/EditText;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->bindPhoneNumberEdit:Landroid/widget/EditText;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    iget-object v0, p0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->bindPhoneNumberEdit:Landroid/widget/EditText;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    .line 61
    move-result v1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 65
    :cond_1
    return-void
.end method


# virtual methods
.method public bindPhoneNumberEdit(Landroid/widget/EditText;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->bindPhoneNumberEdit:Landroid/widget/EditText;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->phoneNumberFormattingTextWatcher:Landroid/text/TextWatcher;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->phoneNumberFormattingTextWatcher:Landroid/text/TextWatcher;

    .line 15
    .line 16
    :cond_0
    iput-object p1, p0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->bindPhoneNumberEdit:Landroid/widget/EditText;

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->update()V

    .line 20
    return-void
.end method

.method public getCountryCode()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->countryInfo:Lcom/narvii/account/mobile/CountryInfoR;

    .line 3
    .line 4
    iget v0, v0, Lcom/narvii/account/mobile/CountryInfoR;->countryCode:I

    .line 5
    return v0
.end method

.method public getCountryInfo()Lcom/narvii/account/mobile/CountryInfoR;
    .locals 1

    iget-object v0, p0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->countryInfo:Lcom/narvii/account/mobile/CountryInfoR;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/logging/LogUtils;->getPageContext(Landroid/view/View;)Lcom/narvii/app/NVContext;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "Country"

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker$1;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker$1;-><init>(Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;)V

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->countryInfo:Lcom/narvii/account/mobile/CountryInfoR;

    .line 25
    const/4 v2, 0x1

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0, v1, v2}, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->createSelectCountryDialog(Landroid/content/Context;Lcom/narvii/util/Callback;Lcom/narvii/account/mobile/CountryInfoR;Z)Landroid/app/Dialog;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 35
    :cond_0
    return-void
.end method

.method public setCountryInfo(Lcom/narvii/account/mobile/CountryInfoR;)V
    .locals 3

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->countryInfo:Lcom/narvii/account/mobile/CountryInfoR;

    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v1, "+"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    iget v1, p1, Lcom/narvii/account/mobile/CountryInfoR;->countryCode:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    const-string v1, "flag_"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/narvii/account/mobile/CountryInfoR;->isoCode:Ljava/lang/String;

    .line 37
    .line 38
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->shortNameToUnicode:Ljava/util/Map;

    .line 52
    .line 53
    .line 54
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    check-cast p1, Ljava/lang/String;

    .line 58
    .line 59
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    .line 70
    invoke-static {v2, p1}, Lcom/narvii/util/emojione/EmojionePng;->getBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    const/high16 v1, 0x40000000    # 2.0f

    .line 81
    .line 82
    .line 83
    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 84
    move-result p1

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    .line 88
    move-result v1

    .line 89
    int-to-float v2, p1

    .line 90
    sub-float/2addr v1, v2

    .line 91
    float-to-int v1, v1

    .line 92
    const/4 v2, 0x0

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 96
    .line 97
    .line 98
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 99
    move-result v1

    .line 100
    .line 101
    if-eqz v1, :cond_0

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 105
    move-result-object v1

    .line 106
    .line 107
    aget-object v1, v1, v2

    .line 108
    goto :goto_0

    .line 109
    :cond_0
    move-object v1, v0

    .line 110
    .line 111
    .line 112
    :goto_0
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 113
    move-result v2

    .line 114
    .line 115
    if-eqz v2, :cond_1

    .line 116
    goto :goto_1

    .line 117
    .line 118
    .line 119
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 120
    move-result-object v0

    .line 121
    const/4 v2, 0x2

    .line 122
    .line 123
    aget-object v0, v0, v2

    .line 124
    :goto_1
    const/4 v2, 0x0

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v1, v2, v0, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 131
    .line 132
    .line 133
    invoke-direct {p0}, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->update()V

    .line 134
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/account/mobile/MobileCountryInfoHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/account/mobile/MobileCountryInfoHelper;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->getLocalCountryInfo(Ljava/lang/String;)Lcom/narvii/account/mobile/CountryInfoR;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->setCountryInfo(Lcom/narvii/account/mobile/CountryInfoR;)V

    .line 17
    return-void
.end method
