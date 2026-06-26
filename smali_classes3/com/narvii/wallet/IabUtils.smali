.class public Lcom/narvii/wallet/IabUtils;
.super Ljava/lang/Object;
.source "IabUtils.java"


# static fields
.field public static final PURCHASE_COMPARATOR_R:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/narvii/wallet/util/Purchase;",
            ">;"
        }
    .end annotation
.end field

.field public static floatFormat:Ljava/text/NumberFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    invoke-static {}, Lcom/narvii/wallet/IabUtils;->setUpFloatFormat()V

    .line 93
    new-instance v0, Lcom/narvii/wallet/IabUtils$1;

    invoke-direct {v0}, Lcom/narvii/wallet/IabUtils$1;-><init>()V

    sput-object v0, Lcom/narvii/wallet/IabUtils;->PURCHASE_COMPARATOR_R:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createIabHelper(Landroid/content/Context;)Lcom/narvii/wallet/util/IabHelper;
    .locals 2

    const v0, 0x7f0f0772

    .line 40
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 42
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 43
    invoke-static {v0, v1}, Lcom/narvii/util/NativeHelper;->B([BI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/NativeHelper;->unpadder16([B)[B

    move-result-object v0

    const/4 v1, 0x2

    .line 44
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 46
    :goto_0
    new-instance v1, Lcom/narvii/wallet/util/IabHelper;

    invoke-direct {v1, p0, v0}, Lcom/narvii/wallet/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v1
.end method

.method public static formatCoins(D)Ljava/lang/String;
    .locals 1

    .line 114
    sget-object v0, Lcom/narvii/wallet/IabUtils;->floatFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatCoins(I)Ljava/lang/String;
    .locals 3

    .line 89
    sget-object v0, Lcom/narvii/util/text/TextUtils;->numberFormat:Ljava/text/NumberFormat;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrencyFormat(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/String;
    .locals 2

    .line 103
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 107
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/narvii/wallet/IabUtils;->floatFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1, p1}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 109
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/narvii/wallet/IabUtils;->floatFormat:Ljava/text/NumberFormat;

    invoke-virtual {p0, p1}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getErrorMessage(Lcom/narvii/wallet/util/IabResult;)Ljava/lang/String;
    .locals 2

    .line 50
    invoke-virtual {p0}, Lcom/narvii/wallet/util/IabResult;->getResponse()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 51
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p0

    const v0, 0x7f0f0771

    invoke-virtual {p0, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/wallet/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getReason(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "IABHELPER_ERROR_BASE"

    return-object p0

    :pswitch_1
    const-string p0, "IABHELPER_REMOTE_EXCEPTION "

    return-object p0

    :pswitch_2
    const-string p0, "IABHELPER_BAD_RESPONSE"

    return-object p0

    :pswitch_3
    const-string p0, "IABHELPER_VERIFICATION_FAILED"

    return-object p0

    :pswitch_4
    const-string p0, "IABHELPER_SEND_INTENT_FAILED"

    return-object p0

    :pswitch_5
    const-string p0, "IABHELPER_USER_CANCELLED"

    return-object p0

    :pswitch_6
    const-string p0, "IABHELPER_UNKNOWN_PURCHASE_RESPONSE"

    return-object p0

    :pswitch_7
    const-string p0, "IABHELPER_MISSING_TOKEN"

    return-object p0

    :pswitch_8
    const-string p0, "IABHELPER_UNKNOWN_ERROR"

    return-object p0

    :pswitch_9
    const-string p0, "IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE"

    return-object p0

    :pswitch_a
    const-string p0, "IABHELPER_INVALID_CONSUMPTION"

    return-object p0

    :pswitch_b
    const-string p0, "IABHELPER_SUBSCRIPTION_UPDATE_NOT_AVAILABLE"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x3f3
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

.method public static setUpFloatFormat()V
    .locals 2

    .line 33
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lcom/narvii/wallet/IabUtils;->floatFormat:Ljava/text/NumberFormat;

    .line 34
    sget-object v0, Lcom/narvii/wallet/IabUtils;->floatFormat:Ljava/text/NumberFormat;

    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 35
    sget-object v0, Lcom/narvii/wallet/IabUtils;->floatFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    return-void
.end method
