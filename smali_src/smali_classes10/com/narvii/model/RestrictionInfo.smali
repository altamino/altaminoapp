.class public Lcom/narvii/model/RestrictionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DAYS_IN_A_MONTH:I = 0x1f

.field public static final PRODUCT_DISCOUNT_STATUS_AMINO_PLUS:I = 0x1

.field public static final PRODUCT_DISCOUNT_STATUS_OFF:I = 0x0

.field public static final PRODUCT_RESTRICT_TYPE_AMINO_MEMBERSHIP:I = 0x2

.field public static final PRODUCT_RESTRICT_TYPE_COIN:I = 0x4

.field public static final PRODUCT_RESTRICT_TYPE_FREE:I = 0x1

.field public static final PRODUCT_RESTRICT_TYPE_NONE:I = 0x0

.field public static final PRODUCT_RESTRICT_TYPE_NO_RESTRICTION:I = 0x3


# instance fields
.field public availableDuration:I

.field public discountStatus:I

.field public discountValue:I

.field public restrictType:I

.field public restrictValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getAvailableDurationInDays()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/model/RestrictionInfo;->availableDuration:I

    .line 3
    .line 4
    .line 5
    const v1, 0x15180

    .line 6
    div-int/2addr v0, v1

    .line 7
    return v0
.end method

.method public hasAvailableDuration()Z
    .locals 1

    iget v0, p0, Lcom/narvii/model/RestrictionInfo;->availableDuration:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSupported()Z
    .locals 2

    iget v0, p0, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/narvii/model/RestrictionInfo;->discountStatus:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
