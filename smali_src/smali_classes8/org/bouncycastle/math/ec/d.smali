.class public abstract Lorg/bouncycastle/math/ec/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/math/ec/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/math/ec/d$a;,
        Lorg/bouncycastle/math/ec/d$b;,
        Lorg/bouncycastle/math/ec/d$c;,
        Lorg/bouncycastle/math/ec/d$d;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/d;
.end method

.method public b()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/d;->m()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public abstract c(Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/d;
.end method

.method public d()[B
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/d;->e()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/d;->m()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/b;->a(ILjava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method public abstract e()I
.end method

.method public abstract f()Lorg/bouncycastle/math/ec/d;
.end method

.method public g()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/d;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public h()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/d;->m()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract i(Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/d;
.end method

.method public abstract j()Lorg/bouncycastle/math/ec/d;
.end method

.method public abstract k()Lorg/bouncycastle/math/ec/d;
.end method

.method public l()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/d;->m()Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    return v0
.end method

.method public abstract m()Ljava/math/BigInteger;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/d;->m()Ljava/math/BigInteger;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
