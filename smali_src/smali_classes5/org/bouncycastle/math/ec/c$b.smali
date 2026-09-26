.class public abstract Lorg/bouncycastle/math/ec/c$b;
.super Lorg/bouncycastle/math/ec/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/math/ec/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method protected constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/math/field/b;->b(Ljava/math/BigInteger;)Lorg/bouncycastle/math/field/a;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/math/ec/c;-><init>(Lorg/bouncycastle/math/field/a;)V

    return-void
.end method

.method private static p(Ljava/security/SecureRandom;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v0, p0}, Lorg/bouncycastle/util/b;->c(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_0

    return-object v0
.end method


# virtual methods
.method public o(Ljava/security/SecureRandom;)Lorg/bouncycastle/math/ec/d;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/c;->i()Lorg/bouncycastle/math/field/a;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/math/field/a;->b()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/c$b;->p(Ljava/security/SecureRandom;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/math/ec/c;->e(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/d;

    move-result-object v1

    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/c$b;->p(Ljava/security/SecureRandom;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/c;->e(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/d;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/bouncycastle/math/ec/d;->i(Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/d;

    move-result-object p1

    return-object p1
.end method
