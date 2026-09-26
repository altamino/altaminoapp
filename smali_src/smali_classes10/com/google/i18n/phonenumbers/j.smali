.class public Lcom/google/i18n/phonenumbers/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private carrierSpecific_:Lcom/google/i18n/phonenumbers/l;

.field private countryCode_:I

.field private emergency_:Lcom/google/i18n/phonenumbers/l;

.field private fixedLine_:Lcom/google/i18n/phonenumbers/l;

.field private generalDesc_:Lcom/google/i18n/phonenumbers/l;

.field private hasCarrierSpecific:Z

.field private hasCountryCode:Z

.field private hasEmergency:Z

.field private hasFixedLine:Z

.field private hasGeneralDesc:Z

.field private hasId:Z

.field private hasInternationalPrefix:Z

.field private hasLeadingDigits:Z

.field private hasLeadingZeroPossible:Z

.field private hasMainCountryForCode:Z

.field private hasMobile:Z

.field private hasMobileNumberPortableRegion:Z

.field private hasNationalPrefix:Z

.field private hasNationalPrefixForParsing:Z

.field private hasNationalPrefixTransformRule:Z

.field private hasNoInternationalDialling:Z

.field private hasPager:Z

.field private hasPersonalNumber:Z

.field private hasPreferredExtnPrefix:Z

.field private hasPreferredInternationalPrefix:Z

.field private hasPremiumRate:Z

.field private hasSameMobileAndFixedLinePattern:Z

.field private hasSharedCost:Z

.field private hasShortCode:Z

.field private hasSmsServices:Z

.field private hasStandardRate:Z

.field private hasTollFree:Z

.field private hasUan:Z

.field private hasVoicemail:Z

.field private hasVoip:Z

.field private id_:Ljava/lang/String;

.field private internationalPrefix_:Ljava/lang/String;

.field private intlNumberFormat_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/i18n/phonenumbers/i;",
            ">;"
        }
    .end annotation
.end field

.field private leadingDigits_:Ljava/lang/String;

.field private leadingZeroPossible_:Z

.field private mainCountryForCode_:Z

.field private mobileNumberPortableRegion_:Z

.field private mobile_:Lcom/google/i18n/phonenumbers/l;

.field private nationalPrefixForParsing_:Ljava/lang/String;

.field private nationalPrefixTransformRule_:Ljava/lang/String;

.field private nationalPrefix_:Ljava/lang/String;

.field private noInternationalDialling_:Lcom/google/i18n/phonenumbers/l;

.field private numberFormat_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/i18n/phonenumbers/i;",
            ">;"
        }
    .end annotation
.end field

.field private pager_:Lcom/google/i18n/phonenumbers/l;

.field private personalNumber_:Lcom/google/i18n/phonenumbers/l;

.field private preferredExtnPrefix_:Ljava/lang/String;

.field private preferredInternationalPrefix_:Ljava/lang/String;

.field private premiumRate_:Lcom/google/i18n/phonenumbers/l;

.field private sameMobileAndFixedLinePattern_:Z

.field private sharedCost_:Lcom/google/i18n/phonenumbers/l;

.field private shortCode_:Lcom/google/i18n/phonenumbers/l;

.field private smsServices_:Lcom/google/i18n/phonenumbers/l;

.field private standardRate_:Lcom/google/i18n/phonenumbers/l;

.field private tollFree_:Lcom/google/i18n/phonenumbers/l;

.field private uan_:Lcom/google/i18n/phonenumbers/l;

.field private voicemail_:Lcom/google/i18n/phonenumbers/l;

.field private voip_:Lcom/google/i18n/phonenumbers/l;


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
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/j;->generalDesc_:Lcom/google/i18n/phonenumbers/l;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/j;->fixedLine_:Lcom/google/i18n/phonenumbers/l;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/j;->mobile_:Lcom/google/i18n/phonenumbers/l;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/j;->tollFree_:Lcom/google/i18n/phonenumbers/l;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/j;->premiumRate_:Lcom/google/i18n/phonenumbers/l;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/j;->sharedCost_:Lcom/google/i18n/phonenumbers/l;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/j;->personalNumber_:Lcom/google/i18n/phonenumbers/l;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/j;->voip_:Lcom/google/i18n/phonenumbers/l;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/j;->pager_:Lcom/google/i18n/phonenumbers/l;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/j;->uan_:Lcom/google/i18n/phonenumbers/l;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/j;->emergency_:Lcom/google/i18n/phonenumbers/l;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/j;->voicemail_:Lcom/google/i18n/phonenumbers/l;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/j;->shortCode_:Lcom/google/i18n/phonenumbers/l;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/j;->standardRate_:Lcom/google/i18n/phonenumbers/l;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/j;->carrierSpecific_:Lcom/google/i18n/phonenumbers/l;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/j;->smsServices_:Lcom/google/i18n/phonenumbers/l;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/j;->noInternationalDialling_:Lcom/google/i18n/phonenumbers/l;

    .line 39
    .line 40
    const-string v0, ""

    .line 41
    .line 42
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/j;->id_:Ljava/lang/String;

    .line 43
    const/4 v1, 0x0

    .line 44
    .line 45
    iput v1, p0, Lcom/google/i18n/phonenumbers/j;->countryCode_:I

    .line 46
    .line 47
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/j;->internationalPrefix_:Ljava/lang/String;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/j;->preferredInternationalPrefix_:Ljava/lang/String;

    .line 50
    .line 51
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/j;->nationalPrefix_:Ljava/lang/String;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/j;->preferredExtnPrefix_:Ljava/lang/String;

    .line 54
    .line 55
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/j;->nationalPrefixForParsing_:Ljava/lang/String;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/j;->nationalPrefixTransformRule_:Ljava/lang/String;

    .line 58
    .line 59
    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/j;->sameMobileAndFixedLinePattern_:Z

    .line 60
    .line 61
    new-instance v2, Ljava/util/ArrayList;

    .line 62
    .line 63
    .line 64
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    iput-object v2, p0, Lcom/google/i18n/phonenumbers/j;->numberFormat_:Ljava/util/List;

    .line 67
    .line 68
    new-instance v2, Ljava/util/ArrayList;

    .line 69
    .line 70
    .line 71
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    iput-object v2, p0, Lcom/google/i18n/phonenumbers/j;->intlNumberFormat_:Ljava/util/List;

    .line 74
    .line 75
    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/j;->mainCountryForCode_:Z

    .line 76
    .line 77
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/j;->leadingDigits_:Ljava/lang/String;

    .line 78
    .line 79
    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/j;->leadingZeroPossible_:Z

    .line 80
    .line 81
    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/j;->mobileNumberPortableRegion_:Z

    .line 82
    return-void
.end method


# virtual methods
.method public A(Z)Lcom/google/i18n/phonenumbers/j;
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasMainCountryForCode:Z

    iput-boolean p1, p0, Lcom/google/i18n/phonenumbers/j;->mainCountryForCode_:Z

    return-object p0
.end method

.method public B(Lcom/google/i18n/phonenumbers/l;)Lcom/google/i18n/phonenumbers/j;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasMobile:Z

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/j;->mobile_:Lcom/google/i18n/phonenumbers/l;

    .line 9
    return-object p0
.end method

.method public C(Z)Lcom/google/i18n/phonenumbers/j;
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasMobileNumberPortableRegion:Z

    iput-boolean p1, p0, Lcom/google/i18n/phonenumbers/j;->mobileNumberPortableRegion_:Z

    return-object p0
.end method

.method public D(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j;
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasNationalPrefix:Z

    iput-object p1, p0, Lcom/google/i18n/phonenumbers/j;->nationalPrefix_:Ljava/lang/String;

    return-object p0
.end method

.method public E(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j;
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasNationalPrefixForParsing:Z

    iput-object p1, p0, Lcom/google/i18n/phonenumbers/j;->nationalPrefixForParsing_:Ljava/lang/String;

    return-object p0
.end method

.method public F(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j;
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasNationalPrefixTransformRule:Z

    iput-object p1, p0, Lcom/google/i18n/phonenumbers/j;->nationalPrefixTransformRule_:Ljava/lang/String;

    return-object p0
.end method

.method public G(Lcom/google/i18n/phonenumbers/l;)Lcom/google/i18n/phonenumbers/j;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasNoInternationalDialling:Z

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/j;->noInternationalDialling_:Lcom/google/i18n/phonenumbers/l;

    .line 9
    return-object p0
.end method

.method public H(Lcom/google/i18n/phonenumbers/l;)Lcom/google/i18n/phonenumbers/j;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasPager:Z

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/j;->pager_:Lcom/google/i18n/phonenumbers/l;

    .line 9
    return-object p0
.end method

.method public I(Lcom/google/i18n/phonenumbers/l;)Lcom/google/i18n/phonenumbers/j;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasPersonalNumber:Z

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/j;->personalNumber_:Lcom/google/i18n/phonenumbers/l;

    .line 9
    return-object p0
.end method

.method public J(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j;
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasPreferredExtnPrefix:Z

    iput-object p1, p0, Lcom/google/i18n/phonenumbers/j;->preferredExtnPrefix_:Ljava/lang/String;

    return-object p0
.end method

.method public K(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j;
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasPreferredInternationalPrefix:Z

    iput-object p1, p0, Lcom/google/i18n/phonenumbers/j;->preferredInternationalPrefix_:Ljava/lang/String;

    return-object p0
.end method

.method public L(Lcom/google/i18n/phonenumbers/l;)Lcom/google/i18n/phonenumbers/j;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasPremiumRate:Z

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/j;->premiumRate_:Lcom/google/i18n/phonenumbers/l;

    .line 9
    return-object p0
.end method

.method public M(Z)Lcom/google/i18n/phonenumbers/j;
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasSameMobileAndFixedLinePattern:Z

    iput-boolean p1, p0, Lcom/google/i18n/phonenumbers/j;->sameMobileAndFixedLinePattern_:Z

    return-object p0
.end method

.method public N(Lcom/google/i18n/phonenumbers/l;)Lcom/google/i18n/phonenumbers/j;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasSharedCost:Z

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/j;->sharedCost_:Lcom/google/i18n/phonenumbers/l;

    .line 9
    return-object p0
.end method

.method public O(Lcom/google/i18n/phonenumbers/l;)Lcom/google/i18n/phonenumbers/j;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasShortCode:Z

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/j;->shortCode_:Lcom/google/i18n/phonenumbers/l;

    .line 9
    return-object p0
.end method

.method public P(Lcom/google/i18n/phonenumbers/l;)Lcom/google/i18n/phonenumbers/j;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasSmsServices:Z

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/j;->smsServices_:Lcom/google/i18n/phonenumbers/l;

    .line 9
    return-object p0
.end method

.method public Q(Lcom/google/i18n/phonenumbers/l;)Lcom/google/i18n/phonenumbers/j;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasStandardRate:Z

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/j;->standardRate_:Lcom/google/i18n/phonenumbers/l;

    .line 9
    return-object p0
.end method

.method public R(Lcom/google/i18n/phonenumbers/l;)Lcom/google/i18n/phonenumbers/j;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasTollFree:Z

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/j;->tollFree_:Lcom/google/i18n/phonenumbers/l;

    .line 9
    return-object p0
.end method

.method public S(Lcom/google/i18n/phonenumbers/l;)Lcom/google/i18n/phonenumbers/j;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasUan:Z

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/j;->uan_:Lcom/google/i18n/phonenumbers/l;

    .line 9
    return-object p0
.end method

.method public T(Lcom/google/i18n/phonenumbers/l;)Lcom/google/i18n/phonenumbers/j;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasVoicemail:Z

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/j;->voicemail_:Lcom/google/i18n/phonenumbers/l;

    .line 9
    return-object p0
.end method

.method public U(Lcom/google/i18n/phonenumbers/l;)Lcom/google/i18n/phonenumbers/j;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasVoip:Z

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/j;->voip_:Lcom/google/i18n/phonenumbers/l;

    .line 9
    return-object p0
.end method

.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/i18n/phonenumbers/j;->countryCode_:I

    return v0
.end method

.method public b()Lcom/google/i18n/phonenumbers/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->fixedLine_:Lcom/google/i18n/phonenumbers/l;

    return-object v0
.end method

.method public c()Lcom/google/i18n/phonenumbers/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->generalDesc_:Lcom/google/i18n/phonenumbers/l;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->internationalPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/google/i18n/phonenumbers/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->mobile_:Lcom/google/i18n/phonenumbers/l;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->nationalPrefixForParsing_:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->nationalPrefixTransformRule_:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lcom/google/i18n/phonenumbers/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->pager_:Lcom/google/i18n/phonenumbers/l;

    return-object v0
.end method

.method public i()Lcom/google/i18n/phonenumbers/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->personalNumber_:Lcom/google/i18n/phonenumbers/l;

    return-object v0
.end method

.method public j()Lcom/google/i18n/phonenumbers/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->premiumRate_:Lcom/google/i18n/phonenumbers/l;

    return-object v0
.end method

.method public k()Lcom/google/i18n/phonenumbers/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->sharedCost_:Lcom/google/i18n/phonenumbers/l;

    return-object v0
.end method

.method public l()Lcom/google/i18n/phonenumbers/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->tollFree_:Lcom/google/i18n/phonenumbers/l;

    return-object v0
.end method

.method public m()Lcom/google/i18n/phonenumbers/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->uan_:Lcom/google/i18n/phonenumbers/l;

    return-object v0
.end method

.method public n()Lcom/google/i18n/phonenumbers/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->voicemail_:Lcom/google/i18n/phonenumbers/l;

    return-object v0
.end method

.method public o()Lcom/google/i18n/phonenumbers/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->voip_:Lcom/google/i18n/phonenumbers/l;

    return-object v0
.end method

.method public p()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->intlNumberFormat_:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public q()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->numberFormat_:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public r(Lcom/google/i18n/phonenumbers/l;)Lcom/google/i18n/phonenumbers/j;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasCarrierSpecific:Z

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/j;->carrierSpecific_:Lcom/google/i18n/phonenumbers/l;

    .line 9
    return-object p0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/google/i18n/phonenumbers/l;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/l;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/l;->readExternal(Ljava/io/ObjectInput;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/j;->v(Lcom/google/i18n/phonenumbers/l;)Lcom/google/i18n/phonenumbers/j;

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    new-instance v0, Lcom/google/i18n/phonenumbers/l;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/l;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/l;->readExternal(Ljava/io/ObjectInput;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/j;->u(Lcom/google/i18n/phonenumbers/l;)Lcom/google/i18n/phonenumbers/j;

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    .line 38
    move-result v0

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    new-instance v0, Lcom/google/i18n/phonenumbers/l;

    .line 43
    .line 44
    .line 45
    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/l;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/l;->readExternal(Ljava/io/ObjectInput;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/j;->B(Lcom/google/i18n/phonenumbers/l;)Lcom/google/i18n/phonenumbers/j;

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    .line 55
    move-result v0

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    new-instance v0, Lcom/google/i18n/phonenumbers/l;

    .line 60
    .line 61
    .line 62
    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/l;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/l;->readExternal(Ljava/io/ObjectInput;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/j;->R(Lcom/google/i18n/phonenumbers/l;)Lcom/google/i18n/phonenumbers/j;

    .line 69
    .line 70
    .line 71
    :cond_3
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    .line 72
    move-result v0

    .line 73
    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    new-instance v0, Lcom/google/i18n/phonenumbers/l;

    .line 77
    .line 78
    .line 79
    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/l;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/l;->readExternal(Ljava/io/ObjectInput;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/j;->L(Lcom/google/i18n/phonenumbers/l;)Lcom/google/i18n/phonenumbers/j;

    .line 86
    .line 87
    .line 88
    :cond_4
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    .line 89
    move-result v0

    .line 90
    .line 91
    if-eqz v0, :cond_5

    .line 92
    .line 93
    new-instance v0, Lcom/google/i18n/phonenumbers/l;

    .line 94
    .line 95
    .line 96
    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/l;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/l;->readExternal(Ljava/io/ObjectInput;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/j;->N(Lcom/google/i18n/phonenumbers/l;)Lcom/google/i18n/phonenumbers/j;

    .line 103
    .line 104
    .line 105
    :cond_5
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    .line 106
    move-result v0

    .line 107
    .line 108
    if-eqz v0, :cond_6

    .line 109
    .line 110
    new-instance v0, Lcom/google/i18n/phonenumbers/l;

    .line 111
    .line 112
    .line 113
    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/l;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/l;->readExternal(Ljava/io/ObjectInput;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/j;->I(Lcom/google/i18n/phonenumbers/l;)Lcom/google/i18n/phonenumbers/j;

    .line 120
    .line 121
    .line 122
    :cond_6
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    .line 123
    move-result v0

    .line 124
    .line 125
    if-eqz v0, :cond_7

    .line 126
    .line 127
    new-instance v0, Lcom/google/i18n/phonenumbers/l;

    .line 128
    .line 129
    .line 130
    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/l;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/l;->readExternal(Ljava/io/ObjectInput;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/j;->U(Lcom/google/i18n/phonenumbers/l;)Lcom/google/i18n/phonenumbers/j;

    .line 137
    .line 138
    .line 139
    :cond_7
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    .line 140
    move-result v0

    .line 141
    .line 142
    if-eqz v0, :cond_8

    .line 143
    .line 144
    new-instance v0, Lcom/google/i18n/phonenumbers/l;

    .line 145
    .line 146
    .line 147
    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/l;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/l;->readExternal(Ljava/io/ObjectInput;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/j;->H(Lcom/google/i18n/phonenumbers/l;)Lcom/google/i18n/phonenumbers/j;

    .line 154
    .line 155
    .line 156
    :cond_8
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    .line 157
    move-result v0

    .line 158
    .line 159
    if-eqz v0, :cond_9

    .line 160
    .line 161
    new-instance v0, Lcom/google/i18n/phonenumbers/l;

    .line 162
    .line 163
    .line 164
    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/l;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/l;->readExternal(Ljava/io/ObjectInput;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/j;->S(Lcom/google/i18n/phonenumbers/l;)Lcom/google/i18n/phonenumbers/j;

    .line 171
    .line 172
    .line 173
    :cond_9
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    .line 174
    move-result v0

    .line 175
    .line 176
    if-eqz v0, :cond_a

    .line 177
    .line 178
    new-instance v0, Lcom/google/i18n/phonenumbers/l;

    .line 179
    .line 180
    .line 181
    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/l;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/l;->readExternal(Ljava/io/ObjectInput;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/j;->t(Lcom/google/i18n/phonenumbers/l;)Lcom/google/i18n/phonenumbers/j;

    .line 188
    .line 189
    .line 190
    :cond_a
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    .line 191
    move-result v0

    .line 192
    .line 193
    if-eqz v0, :cond_b

    .line 194
    .line 195
    new-instance v0, Lcom/google/i18n/phonenumbers/l;

    .line 196
    .line 197
    .line 198
    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/l;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/l;->readExternal(Ljava/io/ObjectInput;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/j;->T(Lcom/google/i18n/phonenumbers/l;)Lcom/google/i18n/phonenumbers/j;

    .line 205
    .line 206
    .line 207
    :cond_b
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    .line 208
    move-result v0

    .line 209
    .line 210
    if-eqz v0, :cond_c

    .line 211
    .line 212
    new-instance v0, Lcom/google/i18n/phonenumbers/l;

    .line 213
    .line 214
    .line 215
    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/l;-><init>()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/l;->readExternal(Ljava/io/ObjectInput;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/j;->O(Lcom/google/i18n/phonenumbers/l;)Lcom/google/i18n/phonenumbers/j;

    .line 222
    .line 223
    .line 224
    :cond_c
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    .line 225
    move-result v0

    .line 226
    .line 227
    if-eqz v0, :cond_d

    .line 228
    .line 229
    new-instance v0, Lcom/google/i18n/phonenumbers/l;

    .line 230
    .line 231
    .line 232
    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/l;-><init>()V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/l;->readExternal(Ljava/io/ObjectInput;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/j;->Q(Lcom/google/i18n/phonenumbers/l;)Lcom/google/i18n/phonenumbers/j;

    .line 239
    .line 240
    .line 241
    :cond_d
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    .line 242
    move-result v0

    .line 243
    .line 244
    if-eqz v0, :cond_e

    .line 245
    .line 246
    new-instance v0, Lcom/google/i18n/phonenumbers/l;

    .line 247
    .line 248
    .line 249
    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/l;-><init>()V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/l;->readExternal(Ljava/io/ObjectInput;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/j;->r(Lcom/google/i18n/phonenumbers/l;)Lcom/google/i18n/phonenumbers/j;

    .line 256
    .line 257
    .line 258
    :cond_e
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    .line 259
    move-result v0

    .line 260
    .line 261
    if-eqz v0, :cond_f

    .line 262
    .line 263
    new-instance v0, Lcom/google/i18n/phonenumbers/l;

    .line 264
    .line 265
    .line 266
    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/l;-><init>()V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/l;->readExternal(Ljava/io/ObjectInput;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/j;->P(Lcom/google/i18n/phonenumbers/l;)Lcom/google/i18n/phonenumbers/j;

    .line 273
    .line 274
    .line 275
    :cond_f
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    .line 276
    move-result v0

    .line 277
    .line 278
    if-eqz v0, :cond_10

    .line 279
    .line 280
    new-instance v0, Lcom/google/i18n/phonenumbers/l;

    .line 281
    .line 282
    .line 283
    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/l;-><init>()V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/l;->readExternal(Ljava/io/ObjectInput;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/j;->G(Lcom/google/i18n/phonenumbers/l;)Lcom/google/i18n/phonenumbers/j;

    .line 290
    .line 291
    .line 292
    :cond_10
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    .line 293
    move-result-object v0

    .line 294
    .line 295
    .line 296
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/j;->w(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j;

    .line 297
    .line 298
    .line 299
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    .line 300
    move-result v0

    .line 301
    .line 302
    .line 303
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/j;->s(I)Lcom/google/i18n/phonenumbers/j;

    .line 304
    .line 305
    .line 306
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    .line 307
    move-result-object v0

    .line 308
    .line 309
    .line 310
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/j;->x(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j;

    .line 311
    .line 312
    .line 313
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    .line 314
    move-result v0

    .line 315
    .line 316
    if-eqz v0, :cond_11

    .line 317
    .line 318
    .line 319
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    .line 320
    move-result-object v0

    .line 321
    .line 322
    .line 323
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/j;->K(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j;

    .line 324
    .line 325
    .line 326
    :cond_11
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    .line 327
    move-result v0

    .line 328
    .line 329
    if-eqz v0, :cond_12

    .line 330
    .line 331
    .line 332
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    .line 333
    move-result-object v0

    .line 334
    .line 335
    .line 336
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/j;->D(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j;

    .line 337
    .line 338
    .line 339
    :cond_12
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    .line 340
    move-result v0

    .line 341
    .line 342
    if-eqz v0, :cond_13

    .line 343
    .line 344
    .line 345
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    .line 346
    move-result-object v0

    .line 347
    .line 348
    .line 349
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/j;->J(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j;

    .line 350
    .line 351
    .line 352
    :cond_13
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    .line 353
    move-result v0

    .line 354
    .line 355
    if-eqz v0, :cond_14

    .line 356
    .line 357
    .line 358
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    .line 359
    move-result-object v0

    .line 360
    .line 361
    .line 362
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/j;->E(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j;

    .line 363
    .line 364
    .line 365
    :cond_14
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    .line 366
    move-result v0

    .line 367
    .line 368
    if-eqz v0, :cond_15

    .line 369
    .line 370
    .line 371
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    .line 372
    move-result-object v0

    .line 373
    .line 374
    .line 375
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/j;->F(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j;

    .line 376
    .line 377
    .line 378
    :cond_15
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    .line 379
    move-result v0

    .line 380
    .line 381
    .line 382
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/j;->M(Z)Lcom/google/i18n/phonenumbers/j;

    .line 383
    .line 384
    .line 385
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    .line 386
    move-result v0

    .line 387
    const/4 v1, 0x0

    .line 388
    move v2, v1

    .line 389
    .line 390
    :goto_0
    if-ge v2, v0, :cond_16

    .line 391
    .line 392
    new-instance v3, Lcom/google/i18n/phonenumbers/i;

    .line 393
    .line 394
    .line 395
    invoke-direct {v3}, Lcom/google/i18n/phonenumbers/i;-><init>()V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v3, p1}, Lcom/google/i18n/phonenumbers/i;->readExternal(Ljava/io/ObjectInput;)V

    .line 399
    .line 400
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/j;->numberFormat_:Ljava/util/List;

    .line 401
    .line 402
    .line 403
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    .line 405
    add-int/lit8 v2, v2, 0x1

    .line 406
    goto :goto_0

    .line 407
    .line 408
    .line 409
    :cond_16
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    .line 410
    move-result v0

    .line 411
    .line 412
    :goto_1
    if-ge v1, v0, :cond_17

    .line 413
    .line 414
    new-instance v2, Lcom/google/i18n/phonenumbers/i;

    .line 415
    .line 416
    .line 417
    invoke-direct {v2}, Lcom/google/i18n/phonenumbers/i;-><init>()V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v2, p1}, Lcom/google/i18n/phonenumbers/i;->readExternal(Ljava/io/ObjectInput;)V

    .line 421
    .line 422
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/j;->intlNumberFormat_:Ljava/util/List;

    .line 423
    .line 424
    .line 425
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    .line 427
    add-int/lit8 v1, v1, 0x1

    .line 428
    goto :goto_1

    .line 429
    .line 430
    .line 431
    :cond_17
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    .line 432
    move-result v0

    .line 433
    .line 434
    .line 435
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/j;->A(Z)Lcom/google/i18n/phonenumbers/j;

    .line 436
    .line 437
    .line 438
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    .line 439
    move-result v0

    .line 440
    .line 441
    if-eqz v0, :cond_18

    .line 442
    .line 443
    .line 444
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    .line 445
    move-result-object v0

    .line 446
    .line 447
    .line 448
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/j;->y(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j;

    .line 449
    .line 450
    .line 451
    :cond_18
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    .line 452
    move-result v0

    .line 453
    .line 454
    .line 455
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/j;->z(Z)Lcom/google/i18n/phonenumbers/j;

    .line 456
    .line 457
    .line 458
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    .line 459
    move-result p1

    .line 460
    .line 461
    .line 462
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/j;->C(Z)Lcom/google/i18n/phonenumbers/j;

    .line 463
    return-void
.end method

.method public s(I)Lcom/google/i18n/phonenumbers/j;
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasCountryCode:Z

    iput p1, p0, Lcom/google/i18n/phonenumbers/j;->countryCode_:I

    return-object p0
.end method

.method public t(Lcom/google/i18n/phonenumbers/l;)Lcom/google/i18n/phonenumbers/j;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasEmergency:Z

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/j;->emergency_:Lcom/google/i18n/phonenumbers/l;

    .line 9
    return-object p0
.end method

.method public u(Lcom/google/i18n/phonenumbers/l;)Lcom/google/i18n/phonenumbers/j;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasFixedLine:Z

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/j;->fixedLine_:Lcom/google/i18n/phonenumbers/l;

    .line 9
    return-object p0
.end method

.method public v(Lcom/google/i18n/phonenumbers/l;)Lcom/google/i18n/phonenumbers/j;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasGeneralDesc:Z

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/j;->generalDesc_:Lcom/google/i18n/phonenumbers/l;

    .line 9
    return-object p0
.end method

.method public w(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j;
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasId:Z

    iput-object p1, p0, Lcom/google/i18n/phonenumbers/j;->id_:Ljava/lang/String;

    return-object p0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasGeneralDesc:Z

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasGeneralDesc:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->generalDesc_:Lcom/google/i18n/phonenumbers/l;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/l;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 15
    .line 16
    :cond_0
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasFixedLine:Z

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasFixedLine:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->fixedLine_:Lcom/google/i18n/phonenumbers/l;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/l;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 29
    .line 30
    :cond_1
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasMobile:Z

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 34
    .line 35
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasMobile:Z

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->mobile_:Lcom/google/i18n/phonenumbers/l;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/l;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 43
    .line 44
    :cond_2
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasTollFree:Z

    .line 45
    .line 46
    .line 47
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 48
    .line 49
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasTollFree:Z

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->tollFree_:Lcom/google/i18n/phonenumbers/l;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/l;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 57
    .line 58
    :cond_3
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasPremiumRate:Z

    .line 59
    .line 60
    .line 61
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 62
    .line 63
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasPremiumRate:Z

    .line 64
    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->premiumRate_:Lcom/google/i18n/phonenumbers/l;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/l;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 71
    .line 72
    :cond_4
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasSharedCost:Z

    .line 73
    .line 74
    .line 75
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 76
    .line 77
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasSharedCost:Z

    .line 78
    .line 79
    if-eqz v0, :cond_5

    .line 80
    .line 81
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->sharedCost_:Lcom/google/i18n/phonenumbers/l;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/l;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 85
    .line 86
    :cond_5
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasPersonalNumber:Z

    .line 87
    .line 88
    .line 89
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 90
    .line 91
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasPersonalNumber:Z

    .line 92
    .line 93
    if-eqz v0, :cond_6

    .line 94
    .line 95
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->personalNumber_:Lcom/google/i18n/phonenumbers/l;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/l;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 99
    .line 100
    :cond_6
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasVoip:Z

    .line 101
    .line 102
    .line 103
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 104
    .line 105
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasVoip:Z

    .line 106
    .line 107
    if-eqz v0, :cond_7

    .line 108
    .line 109
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->voip_:Lcom/google/i18n/phonenumbers/l;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/l;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 113
    .line 114
    :cond_7
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasPager:Z

    .line 115
    .line 116
    .line 117
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 118
    .line 119
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasPager:Z

    .line 120
    .line 121
    if-eqz v0, :cond_8

    .line 122
    .line 123
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->pager_:Lcom/google/i18n/phonenumbers/l;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/l;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 127
    .line 128
    :cond_8
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasUan:Z

    .line 129
    .line 130
    .line 131
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 132
    .line 133
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasUan:Z

    .line 134
    .line 135
    if-eqz v0, :cond_9

    .line 136
    .line 137
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->uan_:Lcom/google/i18n/phonenumbers/l;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/l;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 141
    .line 142
    :cond_9
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasEmergency:Z

    .line 143
    .line 144
    .line 145
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 146
    .line 147
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasEmergency:Z

    .line 148
    .line 149
    if-eqz v0, :cond_a

    .line 150
    .line 151
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->emergency_:Lcom/google/i18n/phonenumbers/l;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/l;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 155
    .line 156
    :cond_a
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasVoicemail:Z

    .line 157
    .line 158
    .line 159
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 160
    .line 161
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasVoicemail:Z

    .line 162
    .line 163
    if-eqz v0, :cond_b

    .line 164
    .line 165
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->voicemail_:Lcom/google/i18n/phonenumbers/l;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/l;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 169
    .line 170
    :cond_b
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasShortCode:Z

    .line 171
    .line 172
    .line 173
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 174
    .line 175
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasShortCode:Z

    .line 176
    .line 177
    if-eqz v0, :cond_c

    .line 178
    .line 179
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->shortCode_:Lcom/google/i18n/phonenumbers/l;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/l;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 183
    .line 184
    :cond_c
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasStandardRate:Z

    .line 185
    .line 186
    .line 187
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 188
    .line 189
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasStandardRate:Z

    .line 190
    .line 191
    if-eqz v0, :cond_d

    .line 192
    .line 193
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->standardRate_:Lcom/google/i18n/phonenumbers/l;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/l;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 197
    .line 198
    :cond_d
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasCarrierSpecific:Z

    .line 199
    .line 200
    .line 201
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 202
    .line 203
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasCarrierSpecific:Z

    .line 204
    .line 205
    if-eqz v0, :cond_e

    .line 206
    .line 207
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->carrierSpecific_:Lcom/google/i18n/phonenumbers/l;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/l;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 211
    .line 212
    :cond_e
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasSmsServices:Z

    .line 213
    .line 214
    .line 215
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 216
    .line 217
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasSmsServices:Z

    .line 218
    .line 219
    if-eqz v0, :cond_f

    .line 220
    .line 221
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->smsServices_:Lcom/google/i18n/phonenumbers/l;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/l;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 225
    .line 226
    :cond_f
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasNoInternationalDialling:Z

    .line 227
    .line 228
    .line 229
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 230
    .line 231
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasNoInternationalDialling:Z

    .line 232
    .line 233
    if-eqz v0, :cond_10

    .line 234
    .line 235
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->noInternationalDialling_:Lcom/google/i18n/phonenumbers/l;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/l;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 239
    .line 240
    :cond_10
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->id_:Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 244
    .line 245
    iget v0, p0, Lcom/google/i18n/phonenumbers/j;->countryCode_:I

    .line 246
    .line 247
    .line 248
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 249
    .line 250
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->internationalPrefix_:Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 254
    .line 255
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasPreferredInternationalPrefix:Z

    .line 256
    .line 257
    .line 258
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 259
    .line 260
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasPreferredInternationalPrefix:Z

    .line 261
    .line 262
    if-eqz v0, :cond_11

    .line 263
    .line 264
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->preferredInternationalPrefix_:Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 268
    .line 269
    :cond_11
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasNationalPrefix:Z

    .line 270
    .line 271
    .line 272
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 273
    .line 274
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasNationalPrefix:Z

    .line 275
    .line 276
    if-eqz v0, :cond_12

    .line 277
    .line 278
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->nationalPrefix_:Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 282
    .line 283
    :cond_12
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasPreferredExtnPrefix:Z

    .line 284
    .line 285
    .line 286
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 287
    .line 288
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasPreferredExtnPrefix:Z

    .line 289
    .line 290
    if-eqz v0, :cond_13

    .line 291
    .line 292
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->preferredExtnPrefix_:Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 296
    .line 297
    :cond_13
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasNationalPrefixForParsing:Z

    .line 298
    .line 299
    .line 300
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 301
    .line 302
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasNationalPrefixForParsing:Z

    .line 303
    .line 304
    if-eqz v0, :cond_14

    .line 305
    .line 306
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->nationalPrefixForParsing_:Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 310
    .line 311
    :cond_14
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasNationalPrefixTransformRule:Z

    .line 312
    .line 313
    .line 314
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 315
    .line 316
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasNationalPrefixTransformRule:Z

    .line 317
    .line 318
    if-eqz v0, :cond_15

    .line 319
    .line 320
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->nationalPrefixTransformRule_:Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 324
    .line 325
    :cond_15
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->sameMobileAndFixedLinePattern_:Z

    .line 326
    .line 327
    .line 328
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/j;->q()I

    .line 332
    move-result v0

    .line 333
    .line 334
    .line 335
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 336
    const/4 v1, 0x0

    .line 337
    move v2, v1

    .line 338
    .line 339
    :goto_0
    if-ge v2, v0, :cond_16

    .line 340
    .line 341
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/j;->numberFormat_:Ljava/util/List;

    .line 342
    .line 343
    .line 344
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 345
    move-result-object v3

    .line 346
    .line 347
    check-cast v3, Lcom/google/i18n/phonenumbers/i;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v3, p1}, Lcom/google/i18n/phonenumbers/i;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 351
    .line 352
    add-int/lit8 v2, v2, 0x1

    .line 353
    goto :goto_0

    .line 354
    .line 355
    .line 356
    :cond_16
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/j;->p()I

    .line 357
    move-result v0

    .line 358
    .line 359
    .line 360
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 361
    .line 362
    :goto_1
    if-ge v1, v0, :cond_17

    .line 363
    .line 364
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/j;->intlNumberFormat_:Ljava/util/List;

    .line 365
    .line 366
    .line 367
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 368
    move-result-object v2

    .line 369
    .line 370
    check-cast v2, Lcom/google/i18n/phonenumbers/i;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v2, p1}, Lcom/google/i18n/phonenumbers/i;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 374
    .line 375
    add-int/lit8 v1, v1, 0x1

    .line 376
    goto :goto_1

    .line 377
    .line 378
    :cond_17
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->mainCountryForCode_:Z

    .line 379
    .line 380
    .line 381
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 382
    .line 383
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasLeadingDigits:Z

    .line 384
    .line 385
    .line 386
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 387
    .line 388
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasLeadingDigits:Z

    .line 389
    .line 390
    if-eqz v0, :cond_18

    .line 391
    .line 392
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j;->leadingDigits_:Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 396
    .line 397
    :cond_18
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->leadingZeroPossible_:Z

    .line 398
    .line 399
    .line 400
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 401
    .line 402
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->mobileNumberPortableRegion_:Z

    .line 403
    .line 404
    .line 405
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 406
    return-void
.end method

.method public x(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j;
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasInternationalPrefix:Z

    iput-object p1, p0, Lcom/google/i18n/phonenumbers/j;->internationalPrefix_:Ljava/lang/String;

    return-object p0
.end method

.method public y(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j;
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasLeadingDigits:Z

    iput-object p1, p0, Lcom/google/i18n/phonenumbers/j;->leadingDigits_:Ljava/lang/String;

    return-object p0
.end method

.method public z(Z)Lcom/google/i18n/phonenumbers/j;
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j;->hasLeadingZeroPossible:Z

    iput-boolean p1, p0, Lcom/google/i18n/phonenumbers/j;->leadingZeroPossible_:Z

    return-object p0
.end method
