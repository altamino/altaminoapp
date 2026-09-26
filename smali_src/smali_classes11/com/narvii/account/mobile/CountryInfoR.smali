.class public Lcom/narvii/account/mobile/CountryInfoR;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/account/mobile/CountryInfoR;->collator:Ljava/text/Collator;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    iput p1, p0, Lcom/narvii/account/mobile/CountryInfoR;->countryCode:I

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/narvii/account/mobile/CountryInfoR;->isoCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/account/mobile/CountryInfoR;->countryName:Ljava/lang/String;

    goto :goto_2

    .line 5
    :cond_1
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string p3, ""

    if-nez p1, :cond_2

    .line 6
    new-instance p1, Ljava/util/Locale;

    invoke-direct {p1, p3, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_2
    new-instance p1, Ljava/util/Locale;

    const-string p2, "US"

    invoke-direct {p1, p3, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :goto_1
    invoke-virtual {p1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/account/mobile/CountryInfoR;->countryName:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/account/mobile/CountryInfoR;->isoCode:Ljava/lang/String;

    :goto_2
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;I)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/account/mobile/CountryInfoR;->collator:Ljava/text/Collator;

    .line 12
    invoke-virtual {p1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/account/mobile/CountryInfoR;->countryName:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/account/mobile/CountryInfoR;->isoCode:Ljava/lang/String;

    iput p2, p0, Lcom/narvii/account/mobile/CountryInfoR;->countryCode:I

    return-void
.end method

.method public static getMinAge(Lcom/narvii/account/mobile/CountryInfoR;)I
    .locals 0
    .param p0    # Lcom/narvii/account/mobile/CountryInfoR;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/account/mobile/CountryInfoR;->isGDPR()Z

    .line 6
    move-result p0

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const/16 p0, 0x10

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    const/16 p0, 0xd

    .line 14
    :goto_0
    return p0
.end method


# virtual methods
.method public compareTo(Lcom/narvii/account/mobile/CountryInfoR;)I
    .locals 2

    iget-object v0, p0, Lcom/narvii/account/mobile/CountryInfoR;->collator:Ljava/text/Collator;

    iget-object v1, p0, Lcom/narvii/account/mobile/CountryInfoR;->countryName:Ljava/lang/String;

    .line 2
    iget-object p1, p1, Lcom/narvii/account/mobile/CountryInfoR;->countryName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/account/mobile/CountryInfoR;

    invoke-virtual {p0, p1}, Lcom/narvii/account/mobile/CountryInfoR;->compareTo(Lcom/narvii/account/mobile/CountryInfoR;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    move-result-object v3

    .line 16
    .line 17
    if-ne v2, v3, :cond_2

    .line 18
    .line 19
    check-cast p1, Lcom/narvii/account/mobile/CountryInfoR;

    .line 20
    .line 21
    iget v2, p0, Lcom/narvii/account/mobile/CountryInfoR;->countryCode:I

    .line 22
    .line 23
    iget v3, p1, Lcom/narvii/account/mobile/CountryInfoR;->countryCode:I

    .line 24
    .line 25
    if-ne v2, v3, :cond_1

    .line 26
    move v1, v0

    .line 27
    :cond_1
    and-int/2addr v0, v1

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/account/mobile/CountryInfoR;->isoCode:Ljava/lang/String;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/narvii/account/mobile/CountryInfoR;->isoCode:Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 35
    move-result p1

    .line 36
    and-int/2addr p1, v0

    .line 37
    return p1

    .line 38
    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/mobile/CountryInfoR;->isoCode:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    move-result v0

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/account/mobile/CountryInfoR;->countryName:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget v1, p0, Lcom/narvii/account/mobile/CountryInfoR;->countryCode:I

    .line 20
    add-int/2addr v0, v1

    .line 21
    return v0
.end method

.method public isGDPR()Z
    .locals 28

    const-string v0, "AT"

    const-string v1, "BE"

    const-string v2, "BG"

    const-string v3, "HR"

    const-string v4, "CY"

    const-string v5, "CZ"

    const-string v6, "DK"

    const-string v7, "EE"

    const-string v8, "FI"

    const-string v9, "FR"

    const-string v10, "DE"

    const-string v11, "GR"

    const-string v12, "HU"

    const-string v13, "IE"

    const-string v14, "IT"

    const-string v15, "LV"

    const-string v16, "LT"

    const-string v17, "LU"

    const-string v18, "MT"

    const-string v19, "NL"

    const-string v20, "PL"

    const-string v21, "PT"

    const-string v22, "RO"

    const-string v23, "SK"

    const-string v24, "SI"

    const-string v25, "ES"

    const-string v26, "SE"

    const-string v27, "GB"

    filled-new-array/range {v0 .. v27}, [Ljava/lang/String;

    move-result-object v0

    .line 1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/narvii/account/mobile/CountryInfoR;->isoCode:Ljava/lang/String;

    .line 2
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGDPR(Ljava/util/Date;)Z
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "BE"

    const-string v2, "DK"

    const-string v3, "EE"

    const-string v4, "FI"

    const-string v5, "LV"

    const-string v6, "MT"

    const-string v7, "NO"

    const-string v8, "PT"

    const-string v9, "SE"

    const-string v10, "UK"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "AT"

    const-string v3, "BG"

    const-string v4, "CY"

    const-string v5, "IT"

    const-string v6, "LT"

    const-string v7, "ES"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "FR"

    const-string v4, "GR"

    const-string v5, "CZ"

    filled-new-array {v5, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "HR"

    const-string v5, "DE"

    const-string v6, "HU"

    const-string v7, "IE"

    const-string v8, "LU"

    const-string v9, "PL"

    const-string v10, "RO"

    const-string v11, "SK"

    const-string v12, "SL"

    const-string v13, "CH"

    const-string v14, "CH"

    const-string v15, "NL"

    filled-new-array/range {v4 .. v15}, [Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v5, v0, Lcom/narvii/account/mobile/CountryInfoR;->isoCode:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 4
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v5, v0, Lcom/narvii/account/mobile/CountryInfoR;->isoCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 5
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v5, v0, Lcom/narvii/account/mobile/CountryInfoR;->isoCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 6
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v5, v0, Lcom/narvii/account/mobile/CountryInfoR;->isoCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 7
    invoke-static/range {p1 .. p1}, Lcom/narvii/util/Utils;->getAge(Ljava/util/Date;)I

    move-result v5

    const/4 v6, 0x1

    const/16 v7, 0xd

    if-ge v5, v7, :cond_0

    return v6

    :cond_0
    const/4 v8, 0x0

    if-ne v5, v7, :cond_3

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    if-nez v3, :cond_2

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v6, v8

    :cond_2
    :goto_0
    return v6

    :cond_3
    const/16 v1, 0xe

    if-ne v5, v1, :cond_6

    if-nez v2, :cond_5

    if-nez v3, :cond_5

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    move v6, v8

    :cond_5
    :goto_1
    return v6

    :cond_6
    const/16 v1, 0xf

    if-ne v5, v1, :cond_9

    if-nez v3, :cond_8

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    move v6, v8

    :cond_8
    :goto_2
    return v6

    :cond_9
    const/16 v1, 0x10

    if-ne v5, v1, :cond_a

    return v4

    :cond_a
    return v8
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/account/mobile/CountryInfoR;->countryName:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, " +"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/account/mobile/CountryInfoR;->isoCode:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, "+"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    iget v1, p0, Lcom/narvii/account/mobile/CountryInfoR;->countryCode:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
