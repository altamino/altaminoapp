.class public Lcom/narvii/account/mobile/CountryInfoR;
.super Ljava/lang/Object;
.source "CountryInfoR.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/narvii/account/mobile/CountryInfoR;",
        ">;"
    }
.end annotation


# instance fields
.field private final collator:Ljava/text/Collator;

.field public final countryCode:I

.field public final countryName:Ljava/lang/String;

.field public final isoCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/account/mobile/CountryInfoR;->collator:Ljava/text/Collator;

    .line 23
    iget-object v0, p0, Lcom/narvii/account/mobile/CountryInfoR;->collator:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 24
    iput p1, p0, Lcom/narvii/account/mobile/CountryInfoR;->countryCode:I

    .line 26
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    iput-object p2, p0, Lcom/narvii/account/mobile/CountryInfoR;->isoCode:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/narvii/account/mobile/CountryInfoR;->countryName:Ljava/lang/String;

    goto :goto_2

    .line 28
    :cond_1
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string p3, ""

    if-nez p1, :cond_2

    .line 29
    new-instance p1, Ljava/util/Locale;

    invoke-direct {p1, p3, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 31
    :cond_2
    new-instance p1, Ljava/util/Locale;

    const-string p2, "US"

    invoke-direct {p1, p3, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :goto_1
    invoke-virtual {p1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/account/mobile/CountryInfoR;->countryName:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/account/mobile/CountryInfoR;->isoCode:Ljava/lang/String;

    :goto_2
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;I)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/account/mobile/CountryInfoR;->collator:Ljava/text/Collator;

    .line 43
    invoke-virtual {p1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/account/mobile/CountryInfoR;->countryName:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/account/mobile/CountryInfoR;->isoCode:Ljava/lang/String;

    .line 45
    iput p2, p0, Lcom/narvii/account/mobile/CountryInfoR;->countryCode:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/narvii/account/mobile/CountryInfoR;)I
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/narvii/account/mobile/CountryInfoR;->collator:Ljava/text/Collator;

    iget-object v1, p0, Lcom/narvii/account/mobile/CountryInfoR;->countryName:Ljava/lang/String;

    iget-object p1, p1, Lcom/narvii/account/mobile/CountryInfoR;->countryName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 15
    check-cast p1, Lcom/narvii/account/mobile/CountryInfoR;

    invoke-virtual {p0, p1}, Lcom/narvii/account/mobile/CountryInfoR;->compareTo(Lcom/narvii/account/mobile/CountryInfoR;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 58
    const-class v2, Lcom/narvii/account/mobile/CountryInfoR;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 59
    check-cast p1, Lcom/narvii/account/mobile/CountryInfoR;

    .line 63
    iget v2, p0, Lcom/narvii/account/mobile/CountryInfoR;->countryCode:I

    iget v3, p1, Lcom/narvii/account/mobile/CountryInfoR;->countryCode:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    and-int/2addr v0, v1

    .line 64
    iget-object v1, p0, Lcom/narvii/account/mobile/CountryInfoR;->isoCode:Ljava/lang/String;

    iget-object p1, p1, Lcom/narvii/account/mobile/CountryInfoR;->isoCode:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    and-int/2addr p1, v0

    return p1

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/narvii/account/mobile/CountryInfoR;->isoCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/narvii/account/mobile/CountryInfoR;->countryName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 75
    iget v1, p0, Lcom/narvii/account/mobile/CountryInfoR;->countryCode:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isGDPR()Z
    .locals 5

    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "AT"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "BE"

    aput-object v3, v0, v2

    const/4 v3, 0x2

    const-string v4, "BG"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v4, "HR"

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "CY"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string v4, "CZ"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "DK"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "EE"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "FI"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "FR"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "DE"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string v4, "GR"

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string v4, "HU"

    aput-object v4, v0, v3

    const/16 v3, 0xd

    const-string v4, "IE"

    aput-object v4, v0, v3

    const/16 v3, 0xe

    const-string v4, "IT"

    aput-object v4, v0, v3

    const/16 v3, 0xf

    const-string v4, "LV"

    aput-object v4, v0, v3

    const/16 v3, 0x10

    const-string v4, "LT"

    aput-object v4, v0, v3

    const/16 v3, 0x11

    const-string v4, "LU"

    aput-object v4, v0, v3

    const/16 v3, 0x12

    const-string v4, "MT"

    aput-object v4, v0, v3

    const/16 v3, 0x13

    const-string v4, "NL"

    aput-object v4, v0, v3

    const/16 v3, 0x14

    const-string v4, "PL"

    aput-object v4, v0, v3

    const/16 v3, 0x15

    const-string v4, "PT"

    aput-object v4, v0, v3

    const/16 v3, 0x16

    const-string v4, "RO"

    aput-object v4, v0, v3

    const/16 v3, 0x17

    const-string v4, "SK"

    aput-object v4, v0, v3

    const/16 v3, 0x18

    const-string v4, "SI"

    aput-object v4, v0, v3

    const/16 v3, 0x19

    const-string v4, "ES"

    aput-object v4, v0, v3

    const/16 v3, 0x1a

    const-string v4, "SE"

    aput-object v4, v0, v3

    const/16 v3, 0x1b

    const-string v4, "GB"

    aput-object v4, v0, v3

    .line 51
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 52
    iget-object v3, p0, Lcom/narvii/account/mobile/CountryInfoR;->isoCode:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/narvii/account/mobile/CountryInfoR;->countryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " +"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/account/mobile/CountryInfoR;->isoCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/account/mobile/CountryInfoR;->countryCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
