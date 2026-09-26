.class public final Lcom/google/common/math/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LN_10:D

.field private static final LN_2:D

.field static final SQRT2_PRECOMPUTED_BITS:Ljava/math/BigInteger;

.field static final SQRT2_PRECOMPUTE_THRESHOLD:I = 0x100


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/math/BigInteger;

    .line 3
    .line 4
    const-string v1, "16a09e667f3bcc908b2fb1366ea957d3e3adec17512775099da2f590b0667322a"

    .line 5
    .line 6
    const/16 v2, 0x10

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 10
    .line 11
    sput-object v0, Lcom/google/common/math/a;->SQRT2_PRECOMPUTED_BITS:Ljava/math/BigInteger;

    .line 12
    .line 13
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    .line 17
    move-result-wide v0

    .line 18
    .line 19
    sput-wide v0, Lcom/google/common/math/a;->LN_10:D

    .line 20
    .line 21
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    .line 25
    move-result-wide v0

    .line 26
    .line 27
    sput-wide v0, Lcom/google/common/math/a;->LN_2:D

    .line 28
    return-void
.end method

.method public static a(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/RoundingMode;)Ljava/math/BigInteger;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/math/BigDecimal;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 6
    .line 7
    new-instance p0, Ljava/math/BigDecimal;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 11
    const/4 p1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0, p1, p2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigIntegerExact()Ljava/math/BigInteger;

    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method
