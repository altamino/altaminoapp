.class public Lcom/narvii/wallet/IabUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PURCHASE_COMPARATOR_R:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation
.end field

.field public static floatFormat:Ljava/text/NumberFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/wallet/IabUtils;->setUpFloatFormat()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/wallet/h;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/narvii/wallet/h;-><init>()V

    .line 9
    .line 10
    sput-object v0, Lcom/narvii/wallet/IabUtils;->PURCHASE_COMPARATOR_R:Ljava/util/Comparator;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/android/billingclient/api/Purchase;Lcom/android/billingclient/api/Purchase;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/wallet/IabUtils;->lambda$static$0(Lcom/android/billingclient/api/Purchase;Lcom/android/billingclient/api/Purchase;)I

    move-result p0

    return p0
.end method

.method public static formatCoins(D)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/narvii/wallet/IabUtils;->floatFormat:Ljava/text/NumberFormat;

    .line 2
    invoke-virtual {v0, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatCoins(I)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/narvii/util/text/TextUtils;->numberFormat:Ljava/text/NumberFormat;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrencyFormat(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string p0, ""

    .line 9
    return-object p0

    .line 10
    .line 11
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    sget-object v1, Lcom/narvii/wallet/IabUtils;->floatFormat:Ljava/text/NumberFormat;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return-object p0

    .line 40
    .line 41
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string p0, " "

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    sget-object p0, Lcom/narvii/wallet/IabUtils;->floatFormat:Ljava/text/NumberFormat;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method

.method public static getReason(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "ITEM_NOT_OWNED"

    return-object p0

    :pswitch_1
    const-string p0, "ITEM_ALREADY_OWNED"

    return-object p0

    :pswitch_2
    const-string p0, "ERROR"

    return-object p0

    :pswitch_3
    const-string p0, "DEVELOPER_ERROR"

    return-object p0

    :pswitch_4
    const-string p0, "ITEM_UNAVAILABLE"

    return-object p0

    :pswitch_5
    const-string p0, "BILLING_UNAVAILABLE"

    return-object p0

    :pswitch_6
    const-string p0, "SERVICE_UNAVAILABLE"

    return-object p0

    :pswitch_7
    const-string p0, "USER_CANCELED"

    return-object p0

    :pswitch_8
    const-string p0, "OK"

    return-object p0

    :pswitch_9
    const-string p0, "SERVICE_DISCONNECTED"

    return-object p0

    :pswitch_a
    const-string p0, "FEATURE_NOT_SUPPORTED"

    return-object p0

    :pswitch_b
    const-string p0, "SERVICE_TIMEOUT"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic lambda$static$0(Lcom/android/billingclient/api/Purchase;Lcom/android/billingclient/api/Purchase;)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->g()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->g()J

    .line 8
    move-result-wide p0

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static setUpFloatFormat()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sput-object v0, Lcom/narvii/wallet/IabUtils;->floatFormat:Ljava/text/NumberFormat;

    .line 7
    .line 8
    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 12
    .line 13
    sget-object v0, Lcom/narvii/wallet/IabUtils;->floatFormat:Ljava/text/NumberFormat;

    .line 14
    const/4 v1, 0x2

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 18
    return-void
.end method
