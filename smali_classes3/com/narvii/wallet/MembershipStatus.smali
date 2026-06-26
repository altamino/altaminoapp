.class public Lcom/narvii/wallet/MembershipStatus;
.super Lcom/narvii/model/NVObject;
.source "MembershipStatus.java"


# static fields
.field public static final ACCOUNT_MEMBERSHIP_STATUS_AMINO_PLUS:I = 0x1

.field public static final ACCOUNT_MEMBERSHIP_STATUS_NONE:I = 0x0

.field public static final PAYMENT_TYPE_ANDROID_IN_APP_PURCHASE:I = 0x4

.field public static final PAYMENT_TYPE_ANDROID_IN_APP_SUBSCRIPTION:I = 0x5

.field public static final PAYMENT_TYPE_COIN:I = 0x1

.field public static final PAYMENT_TYPE_IOS_IN_APP_PURCHASE:I = 0x2

.field public static final PAYMENT_TYPE_IOS_IN_APP_SUBSCRIPTION:I = 0x3


# instance fields
.field public createdTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation
.end field

.field public expiredTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation
.end field

.field public isAutoRenew:Z

.field public isPremiumItemMembership:Z

.field public membershipStatus:I

.field public paymentType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public objectType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public status()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
