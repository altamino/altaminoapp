.class public Lcom/narvii/account/mobile/MobileCountryInfoHelper;
.super Ljava/lang/Object;
.source "MobileCountryInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter;,
        Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;
    }
.end annotation


# static fields
.field private static countryCodeByIso:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/narvii/account/mobile/CountryInfoR;",
            ">;"
        }
    .end annotation
.end field

.field private static lastSelectedCountry:Lcom/narvii/account/mobile/CountryInfoR;


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->countryCodeByIso:Ljava/util/Map;

    const/4 v0, 0x0

    .line 48
    sput-object v0, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->lastSelectedCountry:Lcom/narvii/account/mobile/CountryInfoR;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->context:Landroid/content/Context;

    return-void
.end method

.method public static createSelectCountryDialog(Landroid/content/Context;Lcom/narvii/util/Callback;Lcom/narvii/account/mobile/CountryInfoR;Z)Landroid/app/Dialog;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/account/mobile/CountryInfoR;",
            ">;",
            "Lcom/narvii/account/mobile/CountryInfoR;",
            "Z)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .line 214
    invoke-static {p0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p0

    .line 215
    invoke-static {}, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->getCountryList()Ljava/util/List;

    move-result-object v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 219
    :cond_0
    new-instance v1, Lcom/narvii/account/mobile/MobileCountryInfoHelper$1;

    invoke-direct {v1, p0, v0, p1, p3}, Lcom/narvii/account/mobile/MobileCountryInfoHelper$1;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/util/Callback;Z)V

    if-eqz p2, :cond_1

    .line 226
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-lez p0, :cond_1

    .line 228
    new-instance p1, Lcom/narvii/account/mobile/-$$Lambda$MobileCountryInfoHelper$p-l9ZVpux4sb-uvNc-R5gUUt5v0;

    invoke-direct {p1, p0}, Lcom/narvii/account/mobile/-$$Lambda$MobileCountryInfoHelper$p-l9ZVpux4sb-uvNc-R5gUUt5v0;-><init>(I)V

    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    :cond_1
    return-object v1
.end method

.method private static getAllPhoneCountryCodes(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 54
    array-length p2, p1

    if-lez p2, :cond_1

    new-instance p2, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_1
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 56
    :goto_1
    array-length p1, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p1, :cond_4

    .line 59
    aget-object v3, p0, v2

    const/4 v4, 0x3

    const-string v5, ":"

    .line 60
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 61
    aget-object v5, v3, v4

    invoke-virtual {p2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v0, :cond_2

    aget-object v5, v3, v4

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 62
    :cond_2
    new-instance v5, Lcom/narvii/account/mobile/CountryInfoR;

    aget-object v6, v3, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v4, v3, v4

    const/4 v7, 0x2

    aget-object v3, v3, v7

    invoke-direct {v5, v6, v4, v3}, Lcom/narvii/account/mobile/CountryInfoR;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 63
    sget-object v3, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->countryCodeByIso:Ljava/util/Map;

    iget-object v4, v5, Lcom/narvii/account/mobile/CountryInfoR;->isoCode:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private getCountryByPhone(Ljava/lang/String;)Lcom/narvii/account/mobile/CountryInfoR;
    .locals 4

    .line 148
    invoke-static {p1}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "\\d+"

    .line 152
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 153
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 154
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-gt v0, v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    goto :goto_0

    .line 162
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    sget-object v0, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->countryCodeByIso:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/account/mobile/CountryInfoR;

    .line 169
    iget v3, v2, Lcom/narvii/account/mobile/CountryInfoR;->countryCode:I

    if-ne v3, p1, :cond_2

    return-object v2

    :catch_0
    :cond_3
    :goto_0
    return-object v1
.end method

.method public static getCountryList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/account/mobile/CountryInfoR;",
            ">;"
        }
    .end annotation

    .line 179
    sget-object v0, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->countryCodeByIso:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->getAllPhoneCountryCodes(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 183
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    sget-object v1, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->countryCodeByIso:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 185
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public static getCurrentCountry(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "phone"

    .line 129
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 130
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 132
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 135
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 136
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 137
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 138
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLastSelectedCountry()Lcom/narvii/account/mobile/CountryInfoR;
    .locals 2

    .line 196
    sget-object v0, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->lastSelectedCountry:Lcom/narvii/account/mobile/CountryInfoR;

    if-eqz v0, :cond_0

    .line 197
    invoke-static {}, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->getCountryList()Ljava/util/List;

    move-result-object v0

    .line 198
    sget-object v1, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->lastSelectedCountry:Lcom/narvii/account/mobile/CountryInfoR;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 199
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/mobile/CountryInfoR;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$createSelectCountryDialog$0(ILandroid/content/DialogInterface;)V
    .locals 1

    .line 228
    check-cast p1, Lcom/narvii/widget/ListDialog;

    invoke-virtual {p1}, Lcom/narvii/widget/ListDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    return-void
.end method

.method public static setLastSelectedCountry(Lcom/narvii/account/mobile/CountryInfoR;)V
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 206
    sput-object v0, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->lastSelectedCountry:Lcom/narvii/account/mobile/CountryInfoR;

    .line 208
    :cond_0
    invoke-static {}, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->getCountryList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 209
    sput-object p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->lastSelectedCountry:Lcom/narvii/account/mobile/CountryInfoR;

    :cond_1
    return-void
.end method


# virtual methods
.method public getLocalCountryCode(Ljava/lang/String;)I
    .locals 0

    .line 191
    invoke-virtual {p0, p1}, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->getLocalCountryInfo(Ljava/lang/String;)Lcom/narvii/account/mobile/CountryInfoR;

    move-result-object p1

    .line 192
    iget p1, p1, Lcom/narvii/account/mobile/CountryInfoR;->countryCode:I

    return p1
.end method

.method public getLocalCountryInfo(Ljava/lang/String;)Lcom/narvii/account/mobile/CountryInfoR;
    .locals 3

    .line 99
    sget-object v0, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->countryCodeByIso:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->context:Landroid/content/Context;

    invoke-static {v0, v1, v1}, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->getAllPhoneCountryCodes(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 105
    :cond_0
    invoke-static {p1}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    invoke-direct {p0, p1}, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->getCountryByPhone(Ljava/lang/String;)Lcom/narvii/account/mobile/CountryInfoR;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    .line 109
    sget-object p1, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->lastSelectedCountry:Lcom/narvii/account/mobile/CountryInfoR;

    if-eqz p1, :cond_2

    .line 110
    invoke-static {}, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->getLastSelectedCountry()Lcom/narvii/account/mobile/CountryInfoR;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    .line 114
    iget-object p1, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->getCurrentCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 116
    sget-object v0, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->countryCodeByIso:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/narvii/account/mobile/CountryInfoR;

    :cond_3
    if-nez v1, :cond_4

    .line 121
    new-instance v1, Lcom/narvii/account/mobile/CountryInfoR;

    new-instance p1, Ljava/util/Locale;

    const-string v0, ""

    const-string v2, "US"

    invoke-direct {p1, v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {v1, p1, v0}, Lcom/narvii/account/mobile/CountryInfoR;-><init>(Ljava/util/Locale;I)V

    :cond_4
    return-object v1
.end method

.method public splitPhoneNumber(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 79
    sget-object v1, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->countryCodeByIso:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->getAllPhoneCountryCodes(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    const-string v1, "+"

    .line 83
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 84
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 85
    sget-object v4, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->countryCodeByIso:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/account/mobile/CountryInfoR;

    .line 86
    iget v6, v5, Lcom/narvii/account/mobile/CountryInfoR;->countryCode:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 87
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/narvii/account/mobile/CountryInfoR;->countryCode:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v0, v6

    .line 88
    aget-object v5, v0, v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    goto :goto_0

    :cond_2
    aput-object p1, v0, v3

    :cond_3
    return-object v0
.end method
