.class public Lcom/narvii/account/mobile/MobileCountryInfoHelper;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 3
    .line 4
    const/16 v1, 0x12c

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 8
    .line 9
    sput-object v0, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->countryCodeByIso:Ljava/util/Map;

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    sput-object v0, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->lastSelectedCountry:Lcom/narvii/account/mobile/CountryInfoR;

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->context:Landroid/content/Context;

    .line 6
    return-void
.end method

.method public static synthetic a(ILandroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->lambda$createSelectCountryDialog$0(ILandroid/content/DialogInterface;)V

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

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->getCountryList()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    .line 14
    :cond_0
    new-instance v1, Lcom/narvii/account/mobile/MobileCountryInfoHelper$1;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, p0, v0, p1, p3}, Lcom/narvii/account/mobile/MobileCountryInfoHelper$1;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/util/Callback;Z)V

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 23
    move-result p0

    .line 24
    .line 25
    if-lez p0, :cond_1

    .line 26
    .line 27
    new-instance p1, Lcom/narvii/account/mobile/a;

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, p0}, Lcom/narvii/account/mobile/a;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 34
    :cond_1
    return-object v1
.end method

.method private static getAllPhoneCountryCodes(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    const v0, 0x7f030002

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashSet;

    .line 16
    .line 17
    .line 18
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    .line 26
    :goto_0
    if-eqz p1, :cond_1

    .line 27
    array-length p2, p1

    .line 28
    .line 29
    if-lez p2, :cond_1

    .line 30
    .line 31
    new-instance p2, Ljava/util/HashSet;

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 39
    goto :goto_1

    .line 40
    .line 41
    :cond_1
    new-instance p2, Ljava/util/HashSet;

    .line 42
    .line 43
    .line 44
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 45
    :goto_1
    array-length p1, p0

    .line 46
    const/4 v1, 0x0

    .line 47
    move v2, v1

    .line 48
    .line 49
    :goto_2
    if-ge v2, p1, :cond_4

    .line 50
    .line 51
    aget-object v3, p0, v2

    .line 52
    .line 53
    const-string v4, ":"

    .line 54
    const/4 v5, 0x3

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 58
    move-result-object v3

    .line 59
    const/4 v4, 0x1

    .line 60
    .line 61
    aget-object v5, v3, v4

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 65
    move-result v5

    .line 66
    .line 67
    if-nez v5, :cond_3

    .line 68
    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    aget-object v5, v3, v4

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 75
    move-result v5

    .line 76
    .line 77
    if-eqz v5, :cond_3

    .line 78
    .line 79
    :cond_2
    new-instance v5, Lcom/narvii/account/mobile/CountryInfoR;

    .line 80
    .line 81
    aget-object v6, v3, v1

    .line 82
    .line 83
    .line 84
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 85
    move-result v6

    .line 86
    .line 87
    aget-object v4, v3, v4

    .line 88
    const/4 v7, 0x2

    .line 89
    .line 90
    aget-object v3, v3, v7

    .line 91
    .line 92
    .line 93
    invoke-direct {v5, v6, v4, v3}, Lcom/narvii/account/mobile/CountryInfoR;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    sget-object v3, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->countryCodeByIso:Ljava/util/Map;

    .line 96
    .line 97
    iget-object v4, v5, Lcom/narvii/account/mobile/CountryInfoR;->isoCode:Ljava/lang/String;

    .line 98
    .line 99
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 103
    move-result-object v4

    .line 104
    .line 105
    .line 106
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 109
    goto :goto_2

    .line 110
    :cond_4
    return-void
.end method

.method private getCountryByPhone(Ljava/lang/String;)Lcom/narvii/account/mobile/CountryInfoR;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-object v1

    .line 9
    .line 10
    :cond_0
    const-string v0, "\\d+"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 32
    move-result v0

    .line 33
    const/4 v2, 0x3

    .line 34
    .line 35
    if-gt v0, v2, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 39
    move-result v0

    .line 40
    const/4 v2, 0x1

    .line 41
    .line 42
    if-ge v0, v2, :cond_1

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 47
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    sget-object v0, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->countryCodeByIso:Ljava/util/Map;

    .line 50
    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    move-result v2

    .line 62
    .line 63
    if-eqz v2, :cond_3

    .line 64
    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    check-cast v2, Lcom/narvii/account/mobile/CountryInfoR;

    .line 70
    .line 71
    iget v3, v2, Lcom/narvii/account/mobile/CountryInfoR;->countryCode:I

    .line 72
    .line 73
    if-ne v3, p1, :cond_2

    .line 74
    return-object v2

    .line 75
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

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->countryCodeByIso:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1, v1}, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->getAllPhoneCountryCodes(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 17
    .line 18
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    sget-object v1, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->countryCodeByIso:Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 34
    return-object v0
.end method

.method public static getCurrentCountry(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    :try_start_0
    const-string v0, "phone"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x2

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 19
    move-result v2

    .line 20
    .line 21
    if-ne v2, v1, :cond_0

    .line 22
    .line 23
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    .line 32
    move-result v0

    .line 33
    .line 34
    if-eq v0, v1, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 44
    move-result v0

    .line 45
    .line 46
    if-ne v0, v1, :cond_1

    .line 47
    .line 48
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 52
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    return-object p0

    .line 54
    :catch_0
    :cond_1
    const/4 p0, 0x0

    .line 55
    return-object p0
.end method

.method public static getLastSelectedCountry()Lcom/narvii/account/mobile/CountryInfoR;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->lastSelectedCountry:Lcom/narvii/account/mobile/CountryInfoR;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->getCountryList()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sget-object v1, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->lastSelectedCountry:Lcom/narvii/account/mobile/CountryInfoR;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/narvii/account/mobile/CountryInfoR;

    .line 21
    return-object v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return-object v0
.end method

.method private static synthetic lambda$createSelectCountryDialog$0(ILandroid/content/DialogInterface;)V
    .locals 1

    .line 1
    .line 2
    check-cast p1, Lcom/narvii/widget/ListDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/widget/ListDialog;->getListView()Landroid/widget/ListView;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p0, v0}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 11
    return-void
.end method

.method public static setLastSelectedCountry(Lcom/narvii/account/mobile/CountryInfoR;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    sput-object v0, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->lastSelectedCountry:Lcom/narvii/account/mobile/CountryInfoR;

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {}, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->getCountryList()Ljava/util/List;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 13
    move-result v0

    .line 14
    const/4 v1, -0x1

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    sput-object p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->lastSelectedCountry:Lcom/narvii/account/mobile/CountryInfoR;

    .line 19
    :cond_1
    return-void
.end method


# virtual methods
.method public getLocalCountryCode(Ljava/lang/String;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->getLocalCountryInfo(Ljava/lang/String;)Lcom/narvii/account/mobile/CountryInfoR;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget p1, p1, Lcom/narvii/account/mobile/CountryInfoR;->countryCode:I

    .line 7
    return p1
.end method

.method public getLocalCountryInfo(Ljava/lang/String;)Lcom/narvii/account/mobile/CountryInfoR;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->countryCodeByIso:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->context:Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1, v1}, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->getAllPhoneCountryCodes(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-static {p1}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->getCountryByPhone(Ljava/lang/String;)Lcom/narvii/account/mobile/CountryInfoR;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    :cond_1
    if-nez v1, :cond_2

    .line 27
    .line 28
    sget-object p1, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->lastSelectedCountry:Lcom/narvii/account/mobile/CountryInfoR;

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->getLastSelectedCountry()Lcom/narvii/account/mobile/CountryInfoR;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    :cond_2
    if-nez v1, :cond_3

    .line 37
    .line 38
    iget-object p1, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->context:Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->getCurrentCountry(Landroid/content/Context;)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    sget-object v0, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->countryCodeByIso:Ljava/util/Map;

    .line 47
    .line 48
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    move-result-object p1

    .line 57
    move-object v1, p1

    .line 58
    .line 59
    check-cast v1, Lcom/narvii/account/mobile/CountryInfoR;

    .line 60
    .line 61
    :cond_3
    if-nez v1, :cond_4

    .line 62
    .line 63
    new-instance v1, Lcom/narvii/account/mobile/CountryInfoR;

    .line 64
    .line 65
    new-instance p1, Ljava/util/Locale;

    .line 66
    .line 67
    const-string v0, ""

    .line 68
    .line 69
    const-string v2, "US"

    .line 70
    .line 71
    .line 72
    invoke-direct {p1, v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x1

    .line 74
    .line 75
    .line 76
    invoke-direct {v1, p1, v0}, Lcom/narvii/account/mobile/CountryInfoR;-><init>(Ljava/util/Locale;I)V

    .line 77
    :cond_4
    return-object v1
.end method

.method public splitPhoneNumber(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/String;

    .line 4
    .line 5
    sget-object v1, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->countryCodeByIso:Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 9
    move-result v1

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->context:Landroid/content/Context;

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v2, v2}, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->getAllPhoneCountryCodes(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 18
    .line 19
    :cond_0
    const-string v1, "+"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x1

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    sget-object v4, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->countryCodeByIso:Ljava/util/Map;

    .line 33
    .line 34
    .line 35
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 36
    move-result-object v4

    .line 37
    .line 38
    .line 39
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object v4

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v5

    .line 45
    .line 46
    if-eqz v5, :cond_3

    .line 47
    .line 48
    .line 49
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v5

    .line 51
    .line 52
    check-cast v5, Lcom/narvii/account/mobile/CountryInfoR;

    .line 53
    .line 54
    iget v6, v5, Lcom/narvii/account/mobile/CountryInfoR;->countryCode:I

    .line 55
    .line 56
    .line 57
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 58
    move-result-object v6

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 62
    move-result v6

    .line 63
    .line 64
    if-eqz v6, :cond_1

    .line 65
    .line 66
    new-instance v6, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    iget v5, v5, Lcom/narvii/account/mobile/CountryInfoR;->countryCode:I

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v5

    .line 82
    const/4 v6, 0x0

    .line 83
    .line 84
    aput-object v5, v0, v6

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 88
    move-result v5

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 92
    move-result-object v5

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 96
    move-result-object v5

    .line 97
    .line 98
    aput-object v5, v0, v3

    .line 99
    goto :goto_0

    .line 100
    .line 101
    :cond_2
    aput-object p1, v0, v3

    .line 102
    :cond_3
    return-object v0
.end method
