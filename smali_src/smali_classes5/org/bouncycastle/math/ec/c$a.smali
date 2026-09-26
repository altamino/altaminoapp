.class public abstract Lorg/bouncycastle/math/ec/c$a;
.super Lorg/bouncycastle/math/ec/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/math/ec/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field private si:[Ljava/math/BigInteger;


# direct methods
.method protected constructor <init>(IIII)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/c$a;->p(IIII)Lorg/bouncycastle/math/field/a;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/math/ec/c;-><init>(Lorg/bouncycastle/math/field/a;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/math/ec/c$a;->si:[Ljava/math/BigInteger;

    return-void
.end method

.method private static p(IIII)Lorg/bouncycastle/math/field/a;
    .locals 1

    .line 1
    if-eqz p1, :cond_4

    const/4 v0, 0x0

    if-nez p2, :cond_1

    if-nez p3, :cond_0

    filled-new-array {v0, p1, p0}, [I

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/math/field/b;->a([I)Lorg/bouncycastle/math/field/f;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "k3 must be 0 if k2 == 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-le p2, p1, :cond_3

    if-le p3, p2, :cond_2

    filled-new-array {v0, p1, p2, p3, p0}, [I

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/math/field/b;->a([I)Lorg/bouncycastle/math/field/f;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "k3 must be > k2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "k2 must be > k1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "k1 must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static q(Ljava/security/SecureRandom;I)Ljava/math/BigInteger;
    .locals 2

    .line 1
    :cond_0
    invoke-static {p1, p0}, Lorg/bouncycastle/util/b;->c(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-lez v1, :cond_0

    return-object v0
.end method


# virtual methods
.method public b(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/f;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/c;->e(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/d;

    move-result-object p1

    invoke-virtual {p0, p2}, Lorg/bouncycastle/math/ec/c;->e(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/d;

    move-result-object p2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/c;->h()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/d;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/d;->k()Lorg/bouncycastle/math/ec/d;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/c;->g()Lorg/bouncycastle/math/ec/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_2
    invoke-virtual {p2, p1}, Lorg/bouncycastle/math/ec/d;->c(Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/d;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/bouncycastle/math/ec/d;->a(Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/d;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/math/ec/c;->c(Lorg/bouncycastle/math/ec/d;Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/f;

    move-result-object p1

    return-object p1
.end method

.method public o(Ljava/security/SecureRandom;)Lorg/bouncycastle/math/ec/d;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/c;->j()I

    move-result v0

    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/c$a;->q(Ljava/security/SecureRandom;I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/math/ec/c;->e(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/d;

    move-result-object v1

    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/c$a;->q(Ljava/security/SecureRandom;I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/c;->e(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/d;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/bouncycastle/math/ec/d;->i(Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/d;

    move-result-object p1

    return-object p1
.end method
