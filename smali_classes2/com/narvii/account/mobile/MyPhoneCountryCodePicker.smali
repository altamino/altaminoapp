.class public Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;
.super Landroid/widget/TextView;
.source "MyPhoneCountryCodePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field bindPhoneNumberEdit:Landroid/widget/EditText;

.field countryInfo:Lcom/narvii/account/mobile/CountryInfoR;

.field phoneNumberFormattingTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 35
    invoke-virtual {p0, p1}, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->setPhoneNumber(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private update()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->bindPhoneNumberEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->phoneNumberFormattingTextWatcher:Landroid/text/TextWatcher;

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->phoneNumberFormattingTextWatcher:Landroid/text/TextWatcher;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->bindPhoneNumberEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->countryInfo:Lcom/narvii/account/mobile/CountryInfoR;

    if-eqz v0, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 81
    new-instance v1, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    iget-object v0, v0, Lcom/narvii/account/mobile/CountryInfoR;->isoCode:Ljava/lang/String;

    invoke-direct {v1, v0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->phoneNumberFormattingTextWatcher:Landroid/text/TextWatcher;

    .line 82
    iget-object v0, p0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->bindPhoneNumberEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->phoneNumberFormattingTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 83
    iget-object v0, p0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->bindPhoneNumberEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->bindPhoneNumberEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public bindPhoneNumberEdit(Landroid/widget/EditText;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->bindPhoneNumberEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->phoneNumberFormattingTextWatcher:Landroid/text/TextWatcher;

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->phoneNumberFormattingTextWatcher:Landroid/text/TextWatcher;

    .line 71
    :cond_0
    iput-object p1, p0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->bindPhoneNumberEdit:Landroid/widget/EditText;

    .line 72
    invoke-direct {p0}, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->update()V

    return-void
.end method

.method public getCountryCode()I
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->countryInfo:Lcom/narvii/account/mobile/CountryInfoR;

    iget v0, v0, Lcom/narvii/account/mobile/CountryInfoR;->countryCode:I

    return v0
.end method

.method public getCountryInfo()Lcom/narvii/account/mobile/CountryInfoR;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->countryInfo:Lcom/narvii/account/mobile/CountryInfoR;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 90
    invoke-static {p0}, Lcom/narvii/logging/LogUtils;->getPageContext(Landroid/view/View;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string v0, "Country"

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 91
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker$1;

    invoke-direct {v0, p0}, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker$1;-><init>(Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;)V

    iget-object v1, p0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->countryInfo:Lcom/narvii/account/mobile/CountryInfoR;

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->createSelectCountryDialog(Landroid/content/Context;Lcom/narvii/util/Callback;Lcom/narvii/account/mobile/CountryInfoR;Z)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public setCountryInfo(Lcom/narvii/account/mobile/CountryInfoR;)V
    .locals 3

    .line 49
    iput-object p1, p0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->countryInfo:Lcom/narvii/account/mobile/CountryInfoR;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/narvii/account/mobile/CountryInfoR;->countryCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flag_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/narvii/account/mobile/CountryInfoR;->isoCode:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 52
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->shortNameToUnicode:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 53
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/narvii/util/emojione/EmojionePng;->getBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 54
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p1

    .line 55
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    int-to-float v2, p1

    sub-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    .line 56
    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 57
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v0, v0, v2

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 58
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 59
    invoke-direct {p0}, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->update()V

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 2

    .line 40
    new-instance v0, Lcom/narvii/account/mobile/MobileCountryInfoHelper;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/account/mobile/MobileCountryInfoHelper;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-virtual {v0, p1}, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->getLocalCountryInfo(Ljava/lang/String;)Lcom/narvii/account/mobile/CountryInfoR;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->setCountryInfo(Lcom/narvii/account/mobile/CountryInfoR;)V

    return-void
.end method
