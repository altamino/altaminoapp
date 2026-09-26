.class public Lcom/google/i18n/phonenumbers/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/i18n/phonenumbers/m$a;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private countryCodeSource_:Lcom/google/i18n/phonenumbers/m$a;

.field private countryCode_:I

.field private extension_:Ljava/lang/String;

.field private hasCountryCode:Z

.field private hasCountryCodeSource:Z

.field private hasExtension:Z

.field private hasItalianLeadingZero:Z

.field private hasNationalNumber:Z

.field private hasNumberOfLeadingZeros:Z

.field private hasPreferredDomesticCarrierCode:Z

.field private hasRawInput:Z

.field private italianLeadingZero_:Z

.field private nationalNumber_:J

.field private numberOfLeadingZeros_:I

.field private preferredDomesticCarrierCode_:Ljava/lang/String;

.field private rawInput_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lcom/google/i18n/phonenumbers/m;->countryCode_:I

    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    iput-wide v1, p0, Lcom/google/i18n/phonenumbers/m;->nationalNumber_:J

    .line 11
    .line 12
    const-string v1, ""

    .line 13
    .line 14
    iput-object v1, p0, Lcom/google/i18n/phonenumbers/m;->extension_:Ljava/lang/String;

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/m;->italianLeadingZero_:Z

    .line 17
    const/4 v0, 0x1

    .line 18
    .line 19
    iput v0, p0, Lcom/google/i18n/phonenumbers/m;->numberOfLeadingZeros_:I

    .line 20
    .line 21
    iput-object v1, p0, Lcom/google/i18n/phonenumbers/m;->rawInput_:Ljava/lang/String;

    .line 22
    .line 23
    iput-object v1, p0, Lcom/google/i18n/phonenumbers/m;->preferredDomesticCarrierCode_:Ljava/lang/String;

    .line 24
    .line 25
    sget-object v0, Lcom/google/i18n/phonenumbers/m$a;->UNSPECIFIED:Lcom/google/i18n/phonenumbers/m$a;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/m;->countryCodeSource_:Lcom/google/i18n/phonenumbers/m$a;

    .line 28
    return-void
.end method


# virtual methods
.method public a()Lcom/google/i18n/phonenumbers/m;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/m;->hasCountryCodeSource:Z

    .line 4
    .line 5
    sget-object v0, Lcom/google/i18n/phonenumbers/m$a;->UNSPECIFIED:Lcom/google/i18n/phonenumbers/m$a;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/m;->countryCodeSource_:Lcom/google/i18n/phonenumbers/m$a;

    .line 8
    return-object p0
.end method

.method public b(Lcom/google/i18n/phonenumbers/m;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    .line 7
    if-ne p0, p1, :cond_1

    .line 8
    return v1

    .line 9
    .line 10
    :cond_1
    iget v2, p0, Lcom/google/i18n/phonenumbers/m;->countryCode_:I

    .line 11
    .line 12
    iget v3, p1, Lcom/google/i18n/phonenumbers/m;->countryCode_:I

    .line 13
    .line 14
    if-ne v2, v3, :cond_2

    .line 15
    .line 16
    iget-wide v2, p0, Lcom/google/i18n/phonenumbers/m;->nationalNumber_:J

    .line 17
    .line 18
    iget-wide v4, p1, Lcom/google/i18n/phonenumbers/m;->nationalNumber_:J

    .line 19
    .line 20
    cmp-long v2, v2, v4

    .line 21
    .line 22
    if-nez v2, :cond_2

    .line 23
    .line 24
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/m;->extension_:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/google/i18n/phonenumbers/m;->extension_:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v2

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    iget-boolean v2, p0, Lcom/google/i18n/phonenumbers/m;->italianLeadingZero_:Z

    .line 35
    .line 36
    iget-boolean v3, p1, Lcom/google/i18n/phonenumbers/m;->italianLeadingZero_:Z

    .line 37
    .line 38
    if-ne v2, v3, :cond_2

    .line 39
    .line 40
    iget v2, p0, Lcom/google/i18n/phonenumbers/m;->numberOfLeadingZeros_:I

    .line 41
    .line 42
    iget v3, p1, Lcom/google/i18n/phonenumbers/m;->numberOfLeadingZeros_:I

    .line 43
    .line 44
    if-ne v2, v3, :cond_2

    .line 45
    .line 46
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/m;->rawInput_:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p1, Lcom/google/i18n/phonenumbers/m;->rawInput_:Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v2

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/m;->countryCodeSource_:Lcom/google/i18n/phonenumbers/m$a;

    .line 57
    .line 58
    iget-object v3, p1, Lcom/google/i18n/phonenumbers/m;->countryCodeSource_:Lcom/google/i18n/phonenumbers/m$a;

    .line 59
    .line 60
    if-ne v2, v3, :cond_2

    .line 61
    .line 62
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/m;->preferredDomesticCarrierCode_:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v3, p1, Lcom/google/i18n/phonenumbers/m;->preferredDomesticCarrierCode_:Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v2

    .line 69
    .line 70
    if-eqz v2, :cond_2

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/m;->o()Z

    .line 74
    move-result v2

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/m;->o()Z

    .line 78
    move-result p1

    .line 79
    .line 80
    if-ne v2, p1, :cond_2

    .line 81
    move v0, v1

    .line 82
    :cond_2
    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/i18n/phonenumbers/m;->countryCode_:I

    return v0
.end method

.method public d()Lcom/google/i18n/phonenumbers/m$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/m;->countryCodeSource_:Lcom/google/i18n/phonenumbers/m$a;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/m;->extension_:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/google/i18n/phonenumbers/m;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/google/i18n/phonenumbers/m;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/m;->b(Lcom/google/i18n/phonenumbers/m;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method public f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/i18n/phonenumbers/m;->nationalNumber_:J

    return-wide v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/i18n/phonenumbers/m;->numberOfLeadingZeros_:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/m;->preferredDomesticCarrierCode_:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    .line 2
    const/16 v0, 0x87d

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/m;->c()I

    .line 6
    move-result v1

    .line 7
    add-int/2addr v0, v1

    .line 8
    .line 9
    mul-int/lit8 v0, v0, 0x35

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/m;->f()J

    .line 13
    move-result-wide v1

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    .line 21
    move-result v1

    .line 22
    add-int/2addr v0, v1

    .line 23
    .line 24
    mul-int/lit8 v0, v0, 0x35

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/m;->e()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    .line 35
    mul-int/lit8 v0, v0, 0x35

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/m;->p()Z

    .line 39
    move-result v1

    .line 40
    .line 41
    const/16 v2, 0x4d5

    .line 42
    .line 43
    const/16 v3, 0x4cf

    .line 44
    .line 45
    if-eqz v1, :cond_0

    .line 46
    move v1, v3

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move v1, v2

    .line 49
    :goto_0
    add-int/2addr v0, v1

    .line 50
    .line 51
    mul-int/lit8 v0, v0, 0x35

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/m;->g()I

    .line 55
    move-result v1

    .line 56
    add-int/2addr v0, v1

    .line 57
    .line 58
    mul-int/lit8 v0, v0, 0x35

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/m;->i()Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 66
    move-result v1

    .line 67
    add-int/2addr v0, v1

    .line 68
    .line 69
    mul-int/lit8 v0, v0, 0x35

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/m;->d()Lcom/google/i18n/phonenumbers/m$a;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 77
    move-result v1

    .line 78
    add-int/2addr v0, v1

    .line 79
    .line 80
    mul-int/lit8 v0, v0, 0x35

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/m;->h()Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 88
    move-result v1

    .line 89
    add-int/2addr v0, v1

    .line 90
    .line 91
    mul-int/lit8 v0, v0, 0x35

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/m;->o()Z

    .line 95
    move-result v1

    .line 96
    .line 97
    if-eqz v1, :cond_1

    .line 98
    move v2, v3

    .line 99
    :cond_1
    add-int/2addr v0, v2

    .line 100
    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/m;->rawInput_:Ljava/lang/String;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/m;->hasCountryCode:Z

    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/m;->hasCountryCodeSource:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/m;->hasExtension:Z

    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/m;->hasItalianLeadingZero:Z

    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/m;->hasNumberOfLeadingZeros:Z

    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/m;->hasPreferredDomesticCarrierCode:Z

    return v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/m;->italianLeadingZero_:Z

    return v0
.end method

.method public q(I)Lcom/google/i18n/phonenumbers/m;
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/m;->hasCountryCode:Z

    iput p1, p0, Lcom/google/i18n/phonenumbers/m;->countryCode_:I

    return-object p0
.end method

.method public r(Lcom/google/i18n/phonenumbers/m$a;)Lcom/google/i18n/phonenumbers/m;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/m;->hasCountryCodeSource:Z

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/m;->countryCodeSource_:Lcom/google/i18n/phonenumbers/m$a;

    .line 9
    return-object p0
.end method

.method public s(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/m;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/m;->hasExtension:Z

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/m;->extension_:Ljava/lang/String;

    .line 9
    return-object p0
.end method

.method public t(Z)Lcom/google/i18n/phonenumbers/m;
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/m;->hasItalianLeadingZero:Z

    iput-boolean p1, p0, Lcom/google/i18n/phonenumbers/m;->italianLeadingZero_:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "Country Code: "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget v1, p0, Lcom/google/i18n/phonenumbers/m;->countryCode_:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, " National Number: "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget-wide v1, p0, Lcom/google/i18n/phonenumbers/m;->nationalNumber_:J

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/m;->m()Z

    .line 29
    move-result v1

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/m;->p()Z

    .line 35
    move-result v1

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    const-string v1, " Leading Zero(s): true"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/m;->n()Z

    .line 46
    move-result v1

    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    const-string v1, " Number of leading zeros: "

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    iget v1, p0, Lcom/google/i18n/phonenumbers/m;->numberOfLeadingZeros_:I

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/m;->l()Z

    .line 62
    move-result v1

    .line 63
    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    const-string v1, " Extension: "

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/m;->extension_:Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    :cond_2
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/m;->k()Z

    .line 78
    move-result v1

    .line 79
    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    const-string v1, " Country Code Source: "

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/m;->countryCodeSource_:Lcom/google/i18n/phonenumbers/m$a;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    :cond_3
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/m;->o()Z

    .line 94
    move-result v1

    .line 95
    .line 96
    if-eqz v1, :cond_4

    .line 97
    .line 98
    const-string v1, " Preferred Domestic Carrier Code: "

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/m;->preferredDomesticCarrierCode_:Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 111
    return-object v0
.end method

.method public u(J)Lcom/google/i18n/phonenumbers/m;
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/m;->hasNationalNumber:Z

    iput-wide p1, p0, Lcom/google/i18n/phonenumbers/m;->nationalNumber_:J

    return-object p0
.end method

.method public v(I)Lcom/google/i18n/phonenumbers/m;
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/m;->hasNumberOfLeadingZeros:Z

    iput p1, p0, Lcom/google/i18n/phonenumbers/m;->numberOfLeadingZeros_:I

    return-object p0
.end method

.method public w(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/m;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/m;->hasPreferredDomesticCarrierCode:Z

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/m;->preferredDomesticCarrierCode_:Ljava/lang/String;

    .line 9
    return-object p0
.end method

.method public x(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/m;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/m;->hasRawInput:Z

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/m;->rawInput_:Ljava/lang/String;

    .line 9
    return-object p0
.end method
