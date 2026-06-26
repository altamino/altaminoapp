.class public Lcom/narvii/wallet/PaidOutLog;
.super Ljava/lang/Object;
.source "PaidOutLog.java"


# static fields
.field public static final PAID_OUT_TYPE_BANK:I = 0x1

.field public static final PAID_OUT_TYPE_PAYPAL:I = 0x2


# instance fields
.field public amount:D

.field public coins:D

.field public createdTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public currencyCode:Ljava/lang/String;

.field public paymentAccount:Ljava/lang/String;

.field public paymentMethod:I

.field public transactionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
